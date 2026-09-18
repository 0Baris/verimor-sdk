"""Install an already-built artifact in an isolated directory and import its public API."""

from __future__ import annotations

import argparse
import json
import os
import subprocess
import sys
import tempfile
import threading
from collections.abc import Iterator
from contextlib import contextmanager
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from typing import ClassVar
from urllib.parse import parse_qs, urlsplit


class _Handler(BaseHTTPRequestHandler):
    requests: ClassVar[list[dict[str, object]]] = []

    def _respond(self) -> None:
        length = int(self.headers.get("content-length", "0"))
        body = self.rfile.read(length) if length else b""
        self.requests.append(
            {
                "method": self.command,
                "path": urlsplit(self.path).path,
                "query": parse_qs(urlsplit(self.path).query),
                "headers": dict(self.headers),
                "body": body,
            }
        )
        if urlsplit(self.path).path == "/v2/balance":
            status, content_type, response = 200, "text/plain", b"42"
        elif urlsplit(self.path).path == "/v1/messages/otp":
            status, content_type, response = (
                202,
                "application/json",
                b'{"status":"queued"}',
            )
        else:
            status, content_type, response = 200, "application/json", b"[]"
        self.send_response(status)
        self.send_header("content-type", content_type)
        self.end_headers()
        self.wfile.write(response)

    do_GET = _respond
    do_POST = _respond

    def log_message(self, *_: object) -> None:
        return


@contextmanager
def local_server() -> Iterator[tuple[str, list[dict[str, object]]]]:
    _Handler.requests = []
    server = ThreadingHTTPServer(("127.0.0.1", 0), _Handler)
    thread = threading.Thread(target=server.serve_forever, daemon=True)
    thread.start()
    try:
        yield f"http://127.0.0.1:{server.server_port}", _Handler.requests
    finally:
        server.shutdown()
        server.server_close()
        thread.join()


def assert_requests(requests: list[dict[str, object]]) -> None:
    by_path = {str(request["path"]): request for request in requests}
    assert set(by_path) == {"/v2/balance", "/announcements", "/v1/messages/otp"}
    assert by_path["/v2/balance"]["query"] == {
        "username": ["u"],
        "password": ["p"],
    }
    assert by_path["/announcements"]["query"] == {"key": ["switch-key"]}
    headers = by_path["/v1/messages/otp"]["headers"]
    assert isinstance(headers, dict)
    assert headers["x-api-key"] == "wa-key"
    assert json.loads(bytes(by_path["/v1/messages/otp"]["body"]))["to"] == "90500"


def smoke(kind: str, artifact: Path) -> None:
    artifact = artifact.resolve(strict=True)
    with (
        tempfile.TemporaryDirectory(prefix="verimor-install-") as directory,
        local_server() as (
            base_url,
            requests,
        ),
    ):
        root = Path(directory)
        environment = {**os.environ, "VERIMOR_SMOKE_BASE_URL": base_url}
        if kind == "npm":
            subprocess.run(
                [
                    "npm",
                    "install",
                    "--ignore-scripts",
                    "--no-audit",
                    "--no-fund",
                    str(artifact),
                ],
                cwd=root,
                check=True,
            )
            code = """
import * as sdk from '@bariscemant/verimor';
for (const entry of ['sms', 'switch', 'whatsapp']) await import('@bariscemant/verimor/' + entry);
const baseUrl = process.env.VERIMOR_SMOKE_BASE_URL;
const sms = sdk.createSmsClient({username: 'u', password: 'p', baseUrl});
if (await sms.balance() !== 42) throw Error('balance');
const sw = sdk.createSwitchClient({apiKey: 'switch-key', baseUrl});
if (!Array.isArray(await sw.listAnnouncements())) throw Error('switch');
const wa = sdk.createWhatsAppClient({apiKey: 'wa-key', baseUrl});
const otp = await wa.sendOtp({to: '90500', template_name: 'otp'});
if (otp.status !== 'queued') throw Error('whatsapp');
if (!sms.raw || !sw.raw || !wa.raw || !sdk.VerimorApiError) throw Error('exports');
"""
            subprocess.run(
                ["node", "--input-type=module", "-e", code],
                cwd=root,
                env=environment,
                check=True,
            )
        else:
            venv = root / "venv"
            subprocess.run(["uv", "venv", str(venv), "--python", sys.executable], check=True)
            python = venv / ("Scripts/python.exe" if os.name == "nt" else "bin/python")
            subprocess.run(
                ["uv", "pip", "install", "--python", str(python), str(artifact)],
                check=True,
            )
            code = """
import importlib, os, pkgutil, verimor
from verimor import SmsClient, AsyncSmsClient, SwitchClient, AsyncSwitchClient
from verimor import WhatsAppClient, AsyncWhatsAppClient, VerimorApiError
for module in pkgutil.walk_packages(verimor.__path__, verimor.__name__ + '.'):
    importlib.import_module(module.name)
base_url = os.environ['VERIMOR_SMOKE_BASE_URL']
with SmsClient('u', 'p', base_url=base_url) as sms:
    assert sms.balance() == 42
with SwitchClient('switch-key', base_url=base_url) as switch:
    assert switch.list_announcements() == []
with WhatsAppClient('wa-key', base_url=base_url) as whatsapp:
    assert whatsapp.send_otp({'to': '90500', 'template_name': 'otp'})['status'] == 'queued'
"""
            subprocess.run(
                [str(python), "-I", "-c", code],
                cwd=root,
                env=environment,
                check=True,
            )
        assert_requests(requests)
    print(f"Clean install/import passed: {artifact.name}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("kind", choices=["npm", "python"])
    parser.add_argument("artifacts", nargs="+", type=Path)
    args = parser.parse_args()
    for artifact in args.artifacts:
        smoke(args.kind, artifact)
