from __future__ import annotations

from collections.abc import Mapping

import httpx

from verimor._core import balance_value, httpx_args, request_data
from verimor.sms._facade_gen import AsyncSmsFacadeMixin, SmsFacadeMixin
from verimor.sms.generated.client import Client as GeneratedClient

DEFAULT_BASE_URL = "https://sms.verimor.com.tr"


class SmsClient(SmsFacadeMixin):
    product = "sms"

    def __init__(
        self,
        username: str,
        password: str,
        *,
        base_url: str = DEFAULT_BASE_URL,
        timeout: float = 30.0,
        source_addr: str | None = None,
        transport: httpx.BaseTransport | None = None,
    ) -> None:
        self.username = username
        self.password = password
        self.source_addr = source_addr
        self._facade_credentials = {"username": username, "password": password}
        self._facade_defaults = {"sourceAddr": source_addr} if source_addr is not None else {}
        self.raw = GeneratedClient(
            base_url=base_url.rstrip("/"),
            timeout=httpx.Timeout(timeout),
            httpx_args=httpx_args(transport),
        )

    def send(self, body: Mapping[str, object]) -> str:
        source_addr = body.get("source_addr", self.source_addr)
        if source_addr is None:
            raise TypeError("send requires source_addr")
        response = self._request(
            "POST",
            "/v2/send.json",
            json=request_data(
                {**body, "source_addr": source_addr},
                username=self.username,
                password=self.password,
            ),
        )
        return response.text.strip()

    def balance(self) -> float:
        response = self._request(
            "GET", "/v2/balance", params={"username": self.username, "password": self.password}
        )
        return balance_value(response)

    def status(
        self,
        *,
        id: int | None = None,
        custom_id: str | None = None,
        dest: str | None = None,
    ) -> object:
        if (id is None) == (custom_id is None):
            raise TypeError("status requires exactly one of id or custom_id")
        params: dict[str, str | int] = {
            "username": self.username,
            "password": self.password,
            "format": "json",
        }
        if id is not None:
            params["id"] = id
        if custom_id is not None:
            params["custom_id"] = custom_id
        if dest is not None:
            params["dest"] = dest
        return self._request("GET", "/v2/status", params=params).json()


class AsyncSmsClient(AsyncSmsFacadeMixin):
    product = "sms"

    def __init__(
        self,
        username: str,
        password: str,
        *,
        base_url: str = DEFAULT_BASE_URL,
        timeout: float = 30.0,
        source_addr: str | None = None,
        transport: httpx.AsyncBaseTransport | None = None,
    ) -> None:
        self.username = username
        self.password = password
        self.source_addr = source_addr
        self._facade_credentials = {"username": username, "password": password}
        self._facade_defaults = {"sourceAddr": source_addr} if source_addr is not None else {}
        self.raw = GeneratedClient(
            base_url=base_url.rstrip("/"),
            timeout=httpx.Timeout(timeout),
            httpx_args=httpx_args(transport),
        )

    async def send(self, body: Mapping[str, object]) -> str:
        source_addr = body.get("source_addr", self.source_addr)
        if source_addr is None:
            raise TypeError("send requires source_addr")
        response = await self._request(
            "POST",
            "/v2/send.json",
            json=request_data(
                {**body, "source_addr": source_addr},
                username=self.username,
                password=self.password,
            ),
        )
        return response.text.strip()

    async def balance(self) -> float:
        response = await self._request(
            "GET", "/v2/balance", params={"username": self.username, "password": self.password}
        )
        return balance_value(response)

    async def status(
        self,
        *,
        id: int | None = None,
        custom_id: str | None = None,
        dest: str | None = None,
    ) -> object:
        if (id is None) == (custom_id is None):
            raise TypeError("status requires exactly one of id or custom_id")
        params: dict[str, str | int] = {
            "username": self.username,
            "password": self.password,
            "format": "json",
        }
        if id is not None:
            params["id"] = id
        if custom_id is not None:
            params["custom_id"] = custom_id
        if dest is not None:
            params["dest"] = dest
        return (await self._request("GET", "/v2/status", params=params)).json()


__all__ = ["AsyncSmsClient", "SmsClient"]
