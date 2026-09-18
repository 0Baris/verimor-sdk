"""Offline runtime contracts for the handwritten Python convenience clients.

These intentionally exercise the clients through httpx transports and a
loopback server only.  They must never need real Verimor credentials.
"""

from __future__ import annotations

import asyncio
import socket
import threading
from collections.abc import Callable
from contextlib import contextmanager
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
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

StatusBody = tuple[str, bytes, object]
STATUSES = (400, 401, 403, 404, 429, 500, 503)
BODIES: tuple[StatusBody, ...] = (
    ("application/json", b'{"detail":"invalid"}', {"detail": "invalid"}),
    ("text/plain", b"invalid", "invalid"),
    ("text/plain", b"", ""),
    ("application/json", b"{not-json", "{not-json"),
)


def sync_client(product: str, transport: httpx.BaseTransport) -> tuple[Any, Callable[[Any], Any]]:
    if product == "sms":
        return SmsClient("user", "secret", transport=transport), lambda client: client.balance()
    if product == "switch":
        return (
            SwitchClient("key", transport=transport),
            lambda client: client.originate({"extension": "100", "destination": "101"}),
        )
    return (
        WhatsAppClient("key", transport=transport),
        lambda client: client.send_otp({"to": "905001112233", "template_name": "otp"}),
    )


def async_client(
    product: str, transport: httpx.AsyncBaseTransport
) -> tuple[Any, Callable[[Any], Any]]:
    if product == "sms":
        return AsyncSmsClient(
            "user", "secret", transport=transport
        ), lambda client: client.balance()
    if product == "switch":
        return (
            AsyncSwitchClient("key", transport=transport),
            lambda client: client.originate({"extension": "100", "destination": "101"}),
        )
    return (
        AsyncWhatsAppClient("key", transport=transport),
        lambda client: client.send_otp({"to": "905001112233", "template_name": "otp"}),
    )


@pytest.mark.parametrize("product", ("sms", "switch", "whatsapp"))
@pytest.mark.parametrize("status", STATUSES)
@pytest.mark.parametrize("content_type,body,expected", BODIES)
def test_sync_convenience_errors_have_a_stable_contract(
    product: str, status: int, content_type: str, body: bytes, expected: object
) -> None:
    seen: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        seen.append(request)
        return httpx.Response(status, content=body, headers={"content-type": content_type})

    client, call = sync_client(product, httpx.MockTransport(handler))
    with pytest.raises(VerimorApiError) as caught:
        call(client)

    assert (caught.value.product, caught.value.status, caught.value.body) == (
        product,
        status,
        expected,
    )
    assert len(seen) == 1


@pytest.mark.parametrize("product", ("sms", "switch", "whatsapp"))
@pytest.mark.parametrize("status", STATUSES)
@pytest.mark.parametrize("content_type,body,expected", BODIES)
def test_async_convenience_errors_have_the_same_contract(
    product: str, status: int, content_type: str, body: bytes, expected: object
) -> None:
    seen: list[httpx.Request] = []

    def handler(request: httpx.Request) -> httpx.Response:
        seen.append(request)
        return httpx.Response(status, content=body, headers={"content-type": content_type})

    async def scenario() -> None:
        client, call = async_client(product, httpx.MockTransport(handler))
        with pytest.raises(VerimorApiError) as caught:
            await call(client)
        assert (caught.value.product, caught.value.status, caught.value.body) == (
            product,
            status,
            expected,
        )

    asyncio.run(scenario())
    assert len(seen) == 1


@pytest.mark.parametrize("product", ("sms", "switch", "whatsapp"))
def test_sync_context_manager_closes_on_exception(product: str) -> None:
    client, _ = sync_client(product, httpx.MockTransport(lambda _: httpx.Response(200)))
    with pytest.raises(RuntimeError), client:
        raw = client.raw.get_httpx_client()
        raise RuntimeError("test exit")
    assert raw.is_closed


@pytest.mark.parametrize("product", ("sms", "switch", "whatsapp"))
def test_sync_context_manager_closes_on_normal_exit(product: str) -> None:
    client, _ = sync_client(product, httpx.MockTransport(lambda _: httpx.Response(200)))
    with client as entered:
        assert entered is client
        raw = client.raw.get_httpx_client()
        assert not raw.is_closed
    assert raw.is_closed


@pytest.mark.parametrize("product", ("sms", "switch", "whatsapp"))
def test_async_context_manager_closes_on_exception(product: str) -> None:
    async def scenario() -> None:
        client, _ = async_client(product, httpx.MockTransport(lambda _: httpx.Response(200)))
        with pytest.raises(RuntimeError):
            async with client:
                raw = client.raw.get_async_httpx_client()
                raise RuntimeError("test exit")
        assert raw.is_closed

    asyncio.run(scenario())


@pytest.mark.parametrize("product", ("sms", "switch", "whatsapp"))
def test_async_context_manager_closes_on_normal_exit(product: str) -> None:
    async def scenario() -> None:
        client, _ = async_client(product, httpx.MockTransport(lambda _: httpx.Response(200)))
        async with client as entered:
            assert entered is client
            raw = client.raw.get_async_httpx_client()
            assert not raw.is_closed
        assert raw.is_closed

    asyncio.run(scenario())


@contextmanager
def stalled_loopback(*, delay_body: bool = False) -> Any:
    requests = 0
    release = threading.Event()

    class Handler(BaseHTTPRequestHandler):
        def do_GET(self) -> None:
            nonlocal requests
            requests += 1
            if delay_body:
                self.send_response(200)
                self.send_header("Content-Length", "2")
                self.end_headers()
            release.wait(2)
            if delay_body:
                try:
                    self.wfile.write(b"42")
                except OSError:
                    pass

        do_POST = do_GET

        def log_message(self, *_: object) -> None:
            pass

    httpd = ThreadingHTTPServer(("127.0.0.1", 0), Handler)
    thread = threading.Thread(target=httpd.serve_forever, daemon=True)
    thread.start()
    try:
        yield f"http://127.0.0.1:{httpd.server_port}", lambda: requests
    finally:
        release.set()
        httpd.shutdown()
        httpd.server_close()
        thread.join()


def test_loopback_timeout_is_native_and_does_not_retry() -> None:
    with stalled_loopback() as (url, request_count):
        with SmsClient("u", "p", base_url=url, timeout=0.05) as client:
            with pytest.raises(httpx.ReadTimeout):
                client.balance()
        assert request_count() == 1


def test_async_loopback_timeout_is_native_and_does_not_retry() -> None:
    with stalled_loopback() as (url, request_count):

        async def scenario() -> None:
            async with AsyncSmsClient("u", "p", base_url=url, timeout=0.05) as client:
                with pytest.raises(httpx.ReadTimeout):
                    await client.balance()

        asyncio.run(scenario())
        assert request_count() == 1


@pytest.mark.parametrize("asynchronous", (False, True))
def test_loopback_delayed_body_timeout_is_native(asynchronous: bool) -> None:
    with stalled_loopback(delay_body=True) as (url, request_count):
        if not asynchronous:
            with SmsClient("u", "p", base_url=url, timeout=0.05) as client:
                with pytest.raises(httpx.ReadTimeout):
                    client.balance()
        else:

            async def scenario() -> None:
                async with AsyncSmsClient("u", "p", base_url=url, timeout=0.05) as client:
                    with pytest.raises(httpx.ReadTimeout):
                        await client.balance()

            asyncio.run(scenario())
        assert request_count() == 1


def test_async_loopback_cancellation_is_not_translated() -> None:
    with stalled_loopback() as (url, request_count):

        async def scenario() -> None:
            async with AsyncSmsClient("u", "p", base_url=url, timeout=1) as client:
                task = asyncio.create_task(client.balance())
                for _ in range(50):
                    if request_count() == 1:
                        break
                    await asyncio.sleep(0.01)
                assert request_count() == 1
                task.cancel()
                with pytest.raises(asyncio.CancelledError):
                    await task

        asyncio.run(scenario())
        assert request_count() == 1


def refused_loopback_url() -> str:
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        sock.bind(("127.0.0.1", 0))
        return f"http://127.0.0.1:{sock.getsockname()[1]}"


def test_loopback_connection_refusal_remains_native() -> None:
    with SmsClient("u", "p", base_url=refused_loopback_url(), timeout=0.2) as client:
        with pytest.raises(httpx.ConnectError):
            client.balance()


def test_async_loopback_connection_refusal_remains_native() -> None:
    async def scenario() -> None:
        async with AsyncSmsClient("u", "p", base_url=refused_loopback_url(), timeout=0.2) as client:
            with pytest.raises(httpx.ConnectError):
                await client.balance()

    asyncio.run(scenario())
