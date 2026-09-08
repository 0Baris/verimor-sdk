"""Generated operation calls must match the published identity manifest on loopback."""

from __future__ import annotations

import asyncio
import importlib
import json
import threading
from collections.abc import Iterator
from contextlib import contextmanager
from dataclasses import dataclass, replace
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from typing import Any
from urllib.parse import parse_qs, urlparse

import pytest

from verimor import (
    AsyncSmsClient,
    AsyncSwitchClient,
    AsyncWhatsAppClient,
    SmsClient,
    SwitchClient,
    WhatsAppClient,
)

SMS = {"username": "sms-user", "password": "sms-pass"}
SWITCH_KEY = "switch-key"
WHATSAPP_KEY = "whatsapp-key"
ROOT = Path(__file__).resolve().parents[3]


@dataclass(frozen=True)
class Case:
    product: str
    operation_id: str
    method: str
    path: str
    module: str
    params: dict[str, Any]
    body: dict[str, Any] | None = None
    content_type: str | None = None
    body_model: str | None = None
    path_args: tuple[Any, ...] = ()
    identity_path: str | None = None

    @property
    def identity(self) -> tuple[str, str, str, str]:
        return self.product, self.operation_id, self.method, self.identity_path or self.path


def c(
    product: str,
    operation_id: str,
    method: str,
    path: str,
    module: str,
    params: dict[str, Any] | None = None,
    body: dict[str, Any] | None = None,
    content_type: str | None = None,
    body_model: str | None = None,
    path_args: tuple[Any, ...] = (),
    identity_path: str | None = None,
) -> Case:
    return Case(
        product,
        operation_id,
        method,
        path,
        module,
        params or {},
        body,
        content_type,
        body_model,
        path_args,
        identity_path,
    )


# Explicit minimal fixtures: identity, generated module, parameter/body values,
# content type, and path substitutions. No schema or generator is imported.
CASES = [
    c("sms", "get_v2_balance", "GET", "/v2/balance", "bakiye_sorgulamalari.get_v2_balance", SMS),
    c("sms", "get_v2_blacklists", "GET", "/v2/blacklists", "kara_liste.get_v2_blacklists", SMS),
    c(
        "sms",
        "post_v2_blacklists",
        "POST",
        "/v2/blacklists",
        "kara_liste.post_v2_blacklists",
        {**SMS, "phones": "905001112233"},
    ),
    c(
        "sms",
        "delete_v2_blacklists_id",
        "DELETE",
        "/v2/blacklists/905001112233",
        "kara_liste.delete_v2_blacklists_id",
        SMS,
        path_args=("905001112233",),
        identity_path="/v2/blacklists/{id}",
    ),
    c(
        "sms",
        "get_v2_inbound_messages",
        "GET",
        "/v2/inbound_messages",
        "raporlar.get_v2_inbound_messages",
        SMS,
    ),
    c("sms", "get_v2_headers", "GET", "/v2/headers", "basliklar.get_v2_headers", SMS),
    c(
        "sms",
        "post_v2_iys_consents_json",
        "POST",
        "/v2/iys_consents.json",
        "iys_hizmetleri.post_v2_iys_consents_json",
        body={
            **SMS,
            "source_addr": "ACME",
            "consents": [
                {
                    "type": "MESAJ",
                    "source": "HS_WEB",
                    "status": "ONAY",
                    "recipient_type": "BIREYSEL",
                    "consent_date": "2025-01-01T00:00:00",
                    "recipient": "905001112233",
                }
            ],
        },
        content_type="application/json",
        body_model="post_v2_iys_consents_json_body",
    ),
    c(
        "sms",
        "get_v2_iys_campaigns",
        "GET",
        "/v2/iys/campaigns",
        "iys_hizmetleri.get_v2_iys_campaigns",
        SMS,
    ),
    c(
        "sms",
        "get_v2_iys_campaigns_id_consents",
        "GET",
        "/v2/iys/campaigns/1/consents",
        "iys_hizmetleri.get_v2_iys_campaigns_id_consents",
        SMS,
        path_args=(1,),
        identity_path="/v2/iys/campaigns/{id}/consents",
    ),
    c(
        "sms",
        "get_v2_send",
        "GET",
        "/v2/send",
        "sms_kampanyasi.get_v2_send",
        {**SMS, "dest": "905001112233", "msg": "Merhaba"},
    ),
    c(
        "sms",
        "sendSmsJson",
        "POST",
        "/v2/send.json",
        "sms_kampanyasi.send_sms_json",
        body={**SMS, "messages": [{"dest": "905001112233", "msg": "Merhaba"}]},
        content_type="application/json",
        body_model="send_sms_json_body",
    ),
    c(
        "sms",
        "post_v2_cancel_id",
        "POST",
        "/v2/cancel/1",
        "sms_kampanyasi.post_v2_cancel_id",
        body=SMS,
        content_type="application/json",
        body_model="post_v2_cancel_id_body",
        path_args=(1,),
        identity_path="/v2/cancel/{id}",
    ),
    c("sms", "getSmsStatus", "GET", "/v2/status", "raporlar.get_sms_status", {**SMS, "id": 1}),
    c(
        "switch",
        "listAgentStatuses",
        "GET",
        "/agent_statuses",
        "kullanici_yonetimi.list_agent_statuses",
    ),
    c("switch", "getAnnouncements", "GET", "/announcements", "anons_yonetimi.get_announcements"),
    c(
        "switch",
        "createAnnouncement",
        "POST",
        "/announcements",
        "anons_yonetimi.create_announcement",
        body={"name": "announcement", "sounddata": "data:audio/mp3;base64,AA=="},
        content_type="application/x-www-form-urlencoded",
        body_model="create_announcement_body",
    ),
    c(
        "switch",
        "updateAnnouncement",
        "PATCH",
        "/announcements/1",
        "anons_yonetimi.update_announcement",
        body={"name": "announcement"},
        content_type="application/x-www-form-urlencoded",
        body_model="update_announcement_body",
        path_args=("1",),
        identity_path="/announcements/{id}",
    ),
    c(
        "switch",
        "deleteAnnouncement",
        "DELETE",
        "/announcements/1",
        "anons_yonetimi.delete_announcement",
        path_args=("1",),
        identity_path="/announcements/{id}",
    ),
    c(
        "switch",
        "listBlockedNumbers",
        "GET",
        "/blocked_numbers",
        "kara_liste_yonetimi.list_blocked_numbers",
    ),
    c(
        "switch",
        "createBlockedNumber",
        "POST",
        "/blocked_numbers",
        "kara_liste_yonetimi.create_blocked_number",
        {"number": "905001112233"},
    ),
    c(
        "switch",
        "deleteBlockedNumber",
        "DELETE",
        "/blocked_numbers/delete",
        "kara_liste_yonetimi.delete_blocked_number",
        {"number": "905001112233"},
    ),
    c(
        "switch",
        "createBridge",
        "GET",
        "/bridge",
        "cagri_yonetimi.create_bridge",
        {"source": "1001", "destination": "1002"},
    ),
    c(
        "switch",
        "transferCallPost",
        "POST",
        "/transfer",
        "cagri_yonetimi.transfer_call_post",
        {"id": "call-1", "user_number": "1002"},
    ),
    c(
        "switch",
        "transferCall",
        "GET",
        "/transfer/call-1",
        "cagri_yonetimi.transfer_call",
        {"user_number": "1002"},
        path_args=("call-1",),
        identity_path="/transfer/{id}",
    ),
    c("switch", "getCallerIds", "GET", "/caller_ids", "dis_numaralar_yonetimi.get_caller_ids"),
    c(
        "switch",
        "originateCall",
        "GET",
        "/originate",
        "cagri_yonetimi.originate_call",
        {"extension": "1001", "destination": "905001112233"},
    ),
    c(
        "switch",
        "originateCallPost",
        "POST",
        "/originate",
        "cagri_yonetimi.originate_call_post",
        body={"extension": "1001", "destination": "905001112233"},
        content_type="application/json",
        body_model="originate_call_post_json_body",
    ),
    c(
        "switch",
        "hangupCall",
        "GET",
        "/hangup/call-1",
        "cagri_yonetimi.hangup_call",
        path_args=("call-1",),
        identity_path="/hangup/{id}",
    ),
    c(
        "switch",
        "answerCall",
        "GET",
        "/answer/call-1",
        "cagri_yonetimi.answer_call",
        path_args=("call-1",),
        identity_path="/answer/{id}",
    ),
    c(
        "switch",
        "answerCallPost",
        "POST",
        "/answer",
        "cagri_yonetimi.answer_call_post",
        body={"id": "call-1"},
        content_type="application/json",
        body_model="answer_call_post_json_body",
    ),
    c("switch", "getCdrs", "GET", "/cdrs", "raporlama_ve_kayitlar.get_cdrs"),
    c(
        "switch",
        "getCdr",
        "GET",
        "/cdrs/1",
        "raporlama_ve_kayitlar.get_cdr",
        path_args=("1",),
        identity_path="/cdrs/{id}",
    ),
    c(
        "switch",
        "listContactGroups",
        "GET",
        "/contact_groups",
        "rehber_yonetimi.list_contact_groups",
    ),
    c(
        "switch",
        "createContactGroup",
        "POST",
        "/contact_groups",
        "rehber_yonetimi.create_contact_group",
        {"name": "customers"},
    ),
    c(
        "switch",
        "updateContactGroup",
        "PATCH",
        "/contact_groups/1",
        "rehber_yonetimi.update_contact_group",
        {"name": "customers"},
        path_args=("1",),
        identity_path="/contact_groups/{id}",
    ),
    c(
        "switch",
        "deleteContactGroup",
        "DELETE",
        "/contact_groups/1",
        "rehber_yonetimi.delete_contact_group",
        path_args=("1",),
        identity_path="/contact_groups/{id}",
    ),
    c("switch", "listContacts", "GET", "/contacts", "rehber_yonetimi.list_contacts"),
    c(
        "switch",
        "createContact",
        "POST",
        "/contacts",
        "rehber_yonetimi.create_contact",
        {"name": "Ada", "surname": "Lovelace", "phone": "905001112233"},
    ),
    c(
        "switch",
        "updateContact",
        "PATCH",
        "/contacts/1",
        "rehber_yonetimi.update_contact",
        path_args=("1",),
        identity_path="/contacts/{id}",
    ),
    c(
        "switch",
        "deleteContact",
        "DELETE",
        "/contacts/1",
        "rehber_yonetimi.delete_contact",
        path_args=("1",),
        identity_path="/contacts/{id}",
    ),
    c(
        "switch",
        "getCrmIntegrations",
        "GET",
        "/crm_integrations",
        "crm_entegrasyonu.get_crm_integrations",
    ),
    c(
        "switch",
        "updateCrmIntegrations",
        "POST",
        "/crm_integrations",
        "crm_entegrasyonu.update_crm_integrations",
    ),
    c(
        "switch",
        "webhookPayloadExamples",
        "GET",
        "/webhook-payload-examples",
        "crm_entegrasyonu.webhook_payload_examples",
    ),
    c(
        "switch",
        "createDnd",
        "GET",
        "/dnd/1001",
        "kullanici_yonetimi.create_dnd",
        {"state": "on"},
        path_args=("1001",),
        identity_path="/dnd/{id}",
    ),
    c("switch", "listExtensions", "GET", "/extensions", "kullanici_yonetimi.list_extensions"),
    c(
        "switch",
        "getExtension",
        "GET",
        "/extensions/1001",
        "kullanici_yonetimi.get_extension",
        path_args=("1001",),
        identity_path="/extensions/{id}",
    ),
    c(
        "switch",
        "createFaxDocumentUrl",
        "POST",
        "/fax_document_url",
        "faks_yonetimi.create_fax_document_url",
        {"call_uuid": "call-1"},
    ),
    c(
        "switch",
        "downloadFaxDocument",
        "GET",
        "/fax_document/1",
        "faks_yonetimi.download_fax_document",
        path_args=("1",),
        identity_path="/fax_document/{id}",
    ),
    c("switch", "listFaxOrders", "GET", "/fax_orders", "faks_yonetimi.list_fax_orders"),
    c(
        "switch",
        "createFaxOrder",
        "POST",
        "/fax_orders",
        "faks_yonetimi.create_fax_order",
        {"remote_station_id": "905001112233", "filedata": "JVBERi0x"},
    ),
    c("switch", "listFdrs", "GET", "/fdrs", "faks_yonetimi.list_fdrs"),
    c(
        "switch",
        "createIvrCampaign",
        "POST",
        "/ivr_campaigns.json",
        "otomatik_arama_kampanyalari.create_ivr_campaign",
        body={"call_type": "ivr", "name": "campaign", "phone_list": [{"phone": "905001112233"}]},
        content_type="application/json",
        body_model="create_ivr_campaign_body",
    ),
    c(
        "switch",
        "updateIvrCampaign",
        "PATCH",
        "/ivr_campaigns/1.json",
        "otomatik_arama_kampanyalari.update_ivr_campaign",
        {"status": "active"},
        path_args=("1",),
        identity_path="/ivr_campaigns/{id}.json",
    ),
    c(
        "switch",
        "deleteIvrCampaign",
        "DELETE",
        "/ivr_campaigns/1.json",
        "otomatik_arama_kampanyalari.delete_ivr_campaign",
        path_args=("1",),
        identity_path="/ivr_campaigns/{id}.json",
    ),
    c(
        "switch",
        "muteCall",
        "GET",
        "/mute/call-1",
        "cagri_yonetimi.mute_call",
        {"state": "on"},
        path_args=("call-1",),
        identity_path="/mute/{id}",
    ),
    c("switch", "getQueues", "GET", "/queues", "kuyruk_yonetimi.get_queues"),
    c("switch", "getQueuesPending", "GET", "/queues/pending", "kuyruk_yonetimi.get_queues_pending"),
    c(
        "switch",
        "manageQueueUsers",
        "GET",
        "/queue/manage_users",
        "kuyruk_yonetimi.manage_queue_users",
        {"queue_number": "100", "user_list": "1001,1002"},
    ),
    c(
        "switch",
        "getQueueUserList",
        "GET",
        "/queue/user_list",
        "kuyruk_yonetimi.get_queue_user_list",
        {"queue_number": "100"},
    ),
    c(
        "switch",
        "createRecordingUrl",
        "POST",
        "/recording_url",
        "raporlama_ve_kayitlar.create_recording_url",
        {"call_uuid": "call-1"},
    ),
    c(
        "switch",
        "listUserStatuses",
        "GET",
        "/user_statuses",
        "kullanici_yonetimi.list_user_statuses",
    ),
    c(
        "switch",
        "updateOutboundCallerId",
        "GET",
        "/update_outbound_caller_id",
        "dis_numaralar_yonetimi.update_outbound_caller_id",
        {"extension": "1001", "caller_id": "902121112233"},
    ),
    c(
        "switch",
        "getVoicemailMessages",
        "GET",
        "/voicemail_messages",
        "raporlama_ve_kayitlar.get_voicemail_messages",
    ),
    c(
        "switch",
        "createVoicemailRecordingUrl",
        "POST",
        "/voicemail_recording_url",
        "raporlama_ve_kayitlar.create_voicemail_recording_url",
        {"uuid": "voice-1"},
    ),
    c(
        "switch",
        "createWebphoneToken",
        "POST",
        "/webphone_tokens",
        "kullanici_yonetimi.create_webphone_token",
        {"extension": "1001"},
    ),
    c(
        "whatsapp",
        "send_otp_v1_messages_otp_post",
        "POST",
        "/v1/messages/otp",
        "messages.send_otp_v1_messages_otp_post",
        body={
            "to": "905001112233",
            "template_name": "otp",
            "language": "tr",
            "use_tenant_queue": False,
        },
        content_type="application/json",
        body_model="template_message_request",
    ),
    c(
        "whatsapp",
        "send_utility_v1_messages_utility_post",
        "POST",
        "/v1/messages/utility",
        "messages.send_utility_v1_messages_utility_post",
        body={
            "to": "905001112233",
            "template_name": "utility",
            "language": "tr",
            "use_tenant_queue": False,
        },
        content_type="application/json",
        body_model="template_message_request",
    ),
    c("whatsapp", "health_health_get", "GET", "/health", "health.health_health_get"),
]


def assert_identities(
    actual: list[tuple[str, str, str, str]], expected: list[tuple[str, str, str, str]]
) -> None:
    assert len(actual) == len(set(actual)), "duplicate generated identity"
    assert set(actual) == set(expected), "generated identities differ from manifest"


def call_kwargs(case: Case) -> dict[str, Any]:
    result = dict(case.params)
    if case.body is not None:
        assert case.body_model is not None
        model_module = importlib.import_module(
            f"verimor.{case.product}.generated.models.{case.body_model}"
        )
        model_name = "".join(part.capitalize() for part in case.body_model.split("_"))
        result["body"] = getattr(model_module, model_name).from_dict(case.body)
    return result


def raw_client(case: Case, base_url: str, asynchronous: bool) -> Any:
    if case.product == "sms":
        if asynchronous:
            return AsyncSmsClient(
                username=SMS["username"], password=SMS["password"], base_url=base_url
            ).raw
        return SmsClient(
            username=SMS["username"], password=SMS["password"], base_url=base_url
        ).raw
    if case.product == "switch":
        return (AsyncSwitchClient if asynchronous else SwitchClient)(
            SWITCH_KEY, base_url=base_url
        ).raw
    return (AsyncWhatsAppClient if asynchronous else WhatsAppClient)(
        WHATSAPP_KEY, base_url=base_url
    ).raw


@dataclass(frozen=True)
class Received:
    method: str
    path: str
    query: dict[str, list[str]]
    headers: dict[str, str]
    body: bytes


@contextmanager
def loopback() -> Iterator[tuple[str, list[Received]]]:
    received: list[Received] = []

    class Handler(BaseHTTPRequestHandler):
        def handle_request(self) -> None:
            content = self.rfile.read(int(self.headers.get("Content-Length", "0")))
            url = urlparse(self.path)
            received.append(
                Received(self.command, url.path, parse_qs(url.query), dict(self.headers), content)
            )
            self.send_response(
                418
            )  # Avoid response parsing; generated wire behavior is under test.
            self.end_headers()

        do_GET = handle_request
        do_POST = handle_request
        do_PATCH = handle_request
        do_DELETE = handle_request

        def log_message(self, _format: str, *args: object) -> None:
            pass

    server = ThreadingHTTPServer(("127.0.0.1", 0), Handler)
    thread = threading.Thread(target=server.serve_forever, daemon=True)
    thread.start()
    try:
        yield f"http://127.0.0.1:{server.server_port}", received
    finally:
        server.shutdown()
        server.server_close()
        thread.join()


def assert_wire(case: Case, request: Received) -> None:
    expected_query = {
        name: [str(value).lower() if isinstance(value, bool) else str(value)]
        for name, value in case.params.items()
    }
    if case.product == "switch":
        expected_query["key"] = [SWITCH_KEY]
    assert (request.method, request.path, request.query) == (case.method, case.path, expected_query)
    if case.product == "sms":
        auth = (
            json.loads(request.body)
            if case.body
            else {name: value[0] for name, value in request.query.items()}
        )
        assert {name: auth[name] for name in SMS} == SMS
    elif case.product == "switch":
        assert request.query["key"] == [SWITCH_KEY]
    elif case.path != "/health":
        assert request.headers["x-api-key"] == WHATSAPP_KEY
    if case.body is None:
        assert "content-type" not in {name.lower() for name in request.headers}
    else:
        assert case.content_type is not None
        assert case.content_type in request.headers["Content-Type"]
        actual_body = (
            json.loads(request.body)
            if case.content_type == "application/json"
            else {name: value[0] for name, value in parse_qs(request.body.decode()).items()}
        )
        assert actual_body == case.body


def test_every_manifest_operation_has_a_concrete_python_fixture() -> None:
    manifest = json.loads((ROOT / "operation-manifest.json").read_text())
    expected = [
        (item["product"], item["operationId"], item["method"], item["path"]) for item in manifest
    ]
    assert len(CASES) == 68
    assert_identities([case.identity for case in CASES], expected)


def test_identity_guard_rejects_missing_duplicate_wrong_id_and_wrong_route() -> None:
    expected = [case.identity for case in CASES[:2]]
    with pytest.raises(AssertionError, match="differ"):
        assert_identities(expected[1:], expected)
    with pytest.raises(AssertionError, match="duplicate"):
        assert_identities([*expected, expected[0]], expected)
    with pytest.raises(AssertionError, match="differ"):
        assert_identities([replace(CASES[0], operation_id="wrong").identity, expected[1]], expected)
    with pytest.raises(AssertionError, match="differ"):
        assert_identities([replace(CASES[0], path="/wrong").identity, expected[1]], expected)


def test_every_generated_operation_has_equal_sync_and_async_loopback_wire() -> None:
    with loopback() as (base_url, received):
        for case in CASES:
            client = raw_client(case, base_url, False)
            endpoint = importlib.import_module(
                f"verimor.{case.product}.generated.api.{case.module}"
            )
            endpoint.sync_detailed(*case.path_args, client=client, **call_kwargs(case))
            client.get_httpx_client().close()

        async def call_all() -> None:
            for case in CASES:
                client = raw_client(case, base_url, True)
                endpoint = importlib.import_module(
                    f"verimor.{case.product}.generated.api.{case.module}"
                )
                await endpoint.asyncio_detailed(*case.path_args, client=client, **call_kwargs(case))
                await client.get_async_httpx_client().aclose()

        asyncio.run(call_all())

    assert len(received) == 136
    for case, sync_request, async_request in zip(CASES, received[:68], received[68:], strict=True):
        assert_wire(case, sync_request)
        assert_wire(case, async_request)
        assert sync_request == async_request
