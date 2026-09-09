import importlib
import json
import pkgutil
import threading
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import parse_qs, urlparse

import verimor
from verimor import SmsClient, SwitchClient, WhatsAppClient


class Handler(BaseHTTPRequestHandler):
    requests = []

    def log_message(self, *_args: object) -> None:
        pass

    def do_GET(self) -> None:
        self.handle_request()

    def do_POST(self) -> None:
        self.handle_request()

    def handle_request(self) -> None:
        parsed = urlparse(self.path)
        body = self.rfile.read(int(self.headers.get("content-length", 0))).decode()
        self.requests.append((self.command, parsed, dict(self.headers), body))
        if parsed.path == "/v2/balance":
            self.send_response(200)
            self.end_headers()
            self.wfile.write(b"42")
        elif parsed.path == "/originate":
            self.send_response(200)
            self.end_headers()
            self.wfile.write(b"call-1")
        elif parsed.path == "/v1/messages/otp":
            self.send_response(202)
            self.send_header("content-type", "application/json")
            self.end_headers()
            self.wfile.write(b'{"id":"msg-1","status":"queued"}')
        else:
            self.send_error(404)


for module in pkgutil.walk_packages(verimor.__path__, verimor.__name__ + "."):
    importlib.import_module(module.name)
server = ThreadingHTTPServer(("127.0.0.1", 0), Handler)
thread = threading.Thread(target=server.serve_forever, daemon=True)
thread.start()
base_url = f"http://127.0.0.1:{server.server_port}"

try:
    assert SmsClient("u", "p", base_url=base_url).balance() == 42
    assert (
        SwitchClient("switch-key", base_url=base_url).originate(
            {"extension": "1001", "destination": "1002"}
        )
        == "call-1"
    )
    assert (
        WhatsAppClient("whatsapp-key", base_url=base_url).send_otp(
            {"to": "905001112233", "template_name": "otp"}
        )["status"]
        == "queued"
    )
    balance, originate, otp = Handler.requests
    assert parse_qs(balance[1].query) == {"username": ["u"], "password": ["p"]}
    assert parse_qs(originate[1].query) == {"key": ["switch-key"]}
    assert "destination" in originate[3]
    assert otp[2]["x-api-key"] == "whatsapp-key"
    assert json.loads(otp[3])["template_name"] == "otp"
finally:
    server.shutdown()
    thread.join()
    server.server_close()
