from __future__ import annotations

import asyncio
import json
from typing import Any

import httpx
import pytest
from verimor import (
    AsyncSmsClient,
    AsyncSwitchClient,
    AsyncWhatsAppClient,
    SmsClient,
    SwitchClient,
    VerimorApiError,
    WhatsAppClient,
)
from verimor.sms.generated.client import Client as GeneratedSmsClient
from verimor.switch.generated.api.kullanici_yonetimi import list_agent_statuses
from verimor.switch.generated.client import AuthenticatedClient as GeneratedSwitchClient
from verimor.whatsapp.generated.api.messages import send_otp_v1_messages_otp_post
from verimor.whatsapp.generated.models.template_message_request import TemplateMessageRequest


def json_response(status: int, body: Any) -> httpx.Response:
    return httpx.Response(status, json=body)


def test_sms_send_injects_credentials_without_mutating_input() -> None:
    captured: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        captured.append(request)
        return httpx.Response(200, text="123456\n")

    body = {
        "source_addr": "ACME",
        "messages": [{"dest": "905001112233", "msg": "Merhaba"}],
    }
    client = SmsClient("user", "secret", transport=httpx.MockTransport(handler))

    assert client.send(body) == "123456"
    assert body == {
        "source_addr": "ACME",
        "messages": [{"dest": "905001112233", "msg": "Merhaba"}],
    }
    assert captured[0].url == "https://sms.verimor.com.tr/v2/send.json"
    assert json.loads(captured[0].content) == {
        "username": "user",
        "password": "secret",
        **body,
    }


def test_sms_balance_encodes_credentials_and_parses_number() -> None:
    captured: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        captured.append(request)
        return httpx.Response(200, text="42")

    client = SmsClient("u@example.com", "p&1", transport=httpx.MockTransport(handler))

    assert client.balance() == 42
    assert captured[0].url == (
        "https://sms.verimor.com.tr/v2/balance?username=u%40example.com&password=p%261"
    )


def test_sms_status_requires_exactly_one_identifier() -> None:
    client = SmsClient(
        "user", "secret", transport=httpx.MockTransport(lambda _: json_response(200, []))
    )

    with pytest.raises(TypeError, match="exactly one"):
        client.status()
    with pytest.raises(TypeError, match="exactly one"):
        client.status(id=1, custom_id="both")


def test_sms_status_sends_normalized_query() -> None:
    captured: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        captured.append(request)
        return json_response(200, [{"status": "DELIVERED"}])

    client = SmsClient("user", "secret", transport=httpx.MockTransport(handler))

    assert client.status(custom_id="order-1", dest="905001112233") == [{"status": "DELIVERED"}]
    assert dict(captured[0].url.params) == {
        "username": "user",
        "password": "secret",
        "format": "json",
        "custom_id": "order-1",
        "dest": "905001112233",
    }


def test_switch_originate_sends_api_key_in_query() -> None:
    captured: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        captured.append(request)
        return httpx.Response(200, text="OK")

    client = SwitchClient("key value", transport=httpx.MockTransport(handler))

    assert client.originate({"extension": "1001", "destination": "905001112233"}) == "OK"
    assert captured[0].url == "https://api.bulutsantralim.com/originate?key=key+value"


def test_switch_raw_client_is_typed_and_authenticated() -> None:
    captured: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        captured.append(request)
        return json_response(200, [])

    client = SwitchClient("raw key", transport=httpx.MockTransport(handler))

    assert isinstance(client.raw, GeneratedSwitchClient)
    list_agent_statuses.sync_detailed(client=client.raw)
    assert captured[0].url == "https://api.bulutsantralim.com/agent_statuses?key=raw+key"


@pytest.mark.parametrize(
    ("method", "path"),
    [("send_otp", "/v1/messages/otp"), ("send_utility", "/v1/messages/utility")],
)
def test_whatsapp_sends_api_key_header(method: str, path: str) -> None:
    captured: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        captured.append(request)
        return json_response(
            202, {"id": "01234567-89ab-cdef-0123-456789abcdef", "status": "queued"}
        )

    client = WhatsAppClient("wa-secret", transport=httpx.MockTransport(handler))
    result = getattr(client, method)(
        {"to": "905001112233", "template_name": "notification", "parameters": ["123456"]}
    )

    assert result["status"] == "queued"
    assert captured[0].headers["x-api-key"] == "wa-secret"
    assert captured[0].url.path == path


def test_whatsapp_raw_client_is_authenticated() -> None:
    captured: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        captured.append(request)
        return json_response(
            202,
            {"id": "01234567-89ab-cdef-0123-456789abcdef", "status": "queued"},
        )

    client = WhatsAppClient("raw-secret", transport=httpx.MockTransport(handler))

    send_otp_v1_messages_otp_post.sync_detailed(
        client=client.raw,
        body=TemplateMessageRequest(to="905001112233", template_name="otp"),
    )
    assert captured[0].headers["x-api-key"] == "raw-secret"


@pytest.mark.parametrize("status", [400, 503])
def test_non_2xx_response_raises_verimor_api_error(status: int) -> None:
    client = WhatsAppClient(
        "secret",
        transport=httpx.MockTransport(lambda _: json_response(status, {"detail": "invalid"})),
    )

    with pytest.raises(VerimorApiError) as caught:
        client.send_utility({"to": "905001112233", "template_name": "invoice"})

    assert caught.value.product == "whatsapp"
    assert caught.value.status == status
    assert caught.value.body == {"detail": "invalid"}


@pytest.mark.parametrize(
    "error", [httpx.ConnectError("network down"), httpx.ReadTimeout("timed out")]
)
def test_native_transport_error_is_preserved(error: httpx.TransportError) -> None:

    def handler(_: httpx.Request) -> httpx.Response:
        raise error

    client = SmsClient("u", "p", transport=httpx.MockTransport(handler))

    with pytest.raises(type(error)) as caught:
        client.balance()
    assert caught.value is error


def test_timeout_defaults_to_30_seconds_and_can_be_overridden() -> None:
    default = SmsClient("u", "p", transport=httpx.MockTransport(lambda _: httpx.Response(200)))
    custom = SmsClient(
        "u",
        "p",
        timeout=1.5,
        transport=httpx.MockTransport(lambda _: httpx.Response(200)),
    )

    assert default.raw.get_httpx_client().timeout.read == 30
    assert custom.raw.get_httpx_client().timeout.read == 1.5


def test_malformed_balance_response_is_rejected() -> None:
    client = SmsClient(
        "u",
        "p",
        transport=httpx.MockTransport(lambda _: httpx.Response(200, text="not-a-number")),
    )

    with pytest.raises(TypeError, match="Invalid balance response"):
        client.balance()


def test_sync_context_manager_closes_generated_client() -> None:
    with SmsClient(
        "u", "p", transport=httpx.MockTransport(lambda _: httpx.Response(200))
    ) as client:
        assert isinstance(client.raw, GeneratedSmsClient)
        httpx_client = client.raw.get_httpx_client()
        assert not httpx_client.is_closed

    assert httpx_client.is_closed


def test_async_clients_requests_and_context_manager() -> None:
    captured: list[httpx.Request] = []

    async def scenario() -> None:
        def handler(request: httpx.Request) -> httpx.Response:
            captured.append(request)
            return json_response(
                202, {"id": "01234567-89ab-cdef-0123-456789abcdef", "status": "queued"}
            )

        async with AsyncWhatsAppClient("secret", transport=httpx.MockTransport(handler)) as client:
            httpx_client = client.raw.get_async_httpx_client()
            result = await client.send_otp({"to": "905001112233", "template_name": "otp"})
            assert result["status"] == "queued"
            assert not httpx_client.is_closed

        assert httpx_client.is_closed

    asyncio.run(scenario())
    assert captured[0].headers["x-api-key"] == "secret"


def test_all_async_client_types_are_public() -> None:
    assert AsyncSmsClient
    assert AsyncSwitchClient
    assert AsyncWhatsAppClient
