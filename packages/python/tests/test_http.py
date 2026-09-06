"""Loopback HTTP tests: no Verimor credentials or live requests."""

import asyncio
import threading
from contextlib import contextmanager
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import parse_qs, urlparse

import httpx
import pytest

from verimor import AsyncSmsClient, AsyncSwitchClient, SmsClient, VerimorApiError


@contextmanager
def server(status=200, body=b"42", stall=False):
    requests = []
    stop = threading.Event()

    class Handler(BaseHTTPRequestHandler):
        def do_GET(self):
            if self.headers.get("Content-Length"):
                self.rfile.read(int(self.headers["Content-Length"]))
            requests.append(parse_qs(urlparse(self.path).query))
            if stall:
                stop.wait(2)
                return
            self.send_response(status)
            self.send_header("Content-Type", "text/plain")
            self.end_headers()
            self.wfile.write(body)

        do_POST = do_GET

        def log_message(self, *args):
            pass

    httpd = ThreadingHTTPServer(("127.0.0.1", 0), Handler)
    thread = threading.Thread(target=httpd.serve_forever, daemon=True)
    thread.start()
    try:
        yield f"http://127.0.0.1:{httpd.server_port}", requests
    finally:
        stop.set()
        httpd.shutdown()
        httpd.server_close()
        thread.join()


@pytest.mark.parametrize("status", [200, 401, 429, 500])
def test_real_http_status_and_no_retries(status):
    with server(status=status) as (url, requests), SmsClient("u+ &ç", "p", base_url=url) as client:
        if status == 200:
            assert client.balance() == 42
        else:
            with pytest.raises(VerimorApiError) as caught:
                client.balance()
            assert caught.value.status == status
        assert requests == [{"username": ["u+ &ç"], "password": ["p"]}]


def test_real_http_timeout():
    with server(stall=True) as (url, _), SmsClient("u", "p", base_url=url, timeout=0.05) as client:
        with pytest.raises(httpx.ReadTimeout):
            client.balance()


def test_async_sms_http_and_lifecycle():
    with server() as (url, requests):

        async def scenario():
            async with AsyncSmsClient("u", "p", base_url=url) as client:
                raw = client.raw.get_async_httpx_client()
                assert await client.balance() == 42
            assert raw.is_closed

        asyncio.run(scenario())
        assert len(requests) == 1


def test_async_switch_http_auth_and_lifecycle():
    with server(body=b"OK") as (url, requests):

        async def scenario():
            async with AsyncSwitchClient("key+&", base_url=url) as client:
                raw = client.raw.get_async_httpx_client()
                await client.originate({"caller": "100", "destination": "101"})
            assert raw.is_closed

        asyncio.run(scenario())
        assert requests[0]["key"] == ["key+&"]
