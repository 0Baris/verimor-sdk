from __future__ import annotations

from collections.abc import Mapping

import httpx

from verimor._core import balance_value, httpx_args, text_value
from verimor.sms._facade_gen import _OPERATIONS as _SMS_OPERATIONS
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
        return text_value(self._facade_request(_SMS_OPERATIONS["sendSmsJson"], body, {}))

    def balance(self) -> float:
        return balance_value(self._facade_request(_SMS_OPERATIONS["get_v2_balance"], None, {}))

    def status(
        self,
        *,
        id: int | None = None,
        custom_id: str | None = None,
        dest: str | None = None,
    ) -> object:
        if (id is None) == (custom_id is None):
            raise TypeError("status requires exactly one of id or custom_id")
        values = {"id": id, "custom_id": custom_id, "dest": dest}
        return self._facade_request(_SMS_OPERATIONS["getSmsStatus"], None, values)


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
        value = await self._facade_request_async(_SMS_OPERATIONS["sendSmsJson"], body, {})
        return text_value(value)

    async def balance(self) -> float:
        value = await self._facade_request_async(_SMS_OPERATIONS["get_v2_balance"], None, {})
        return balance_value(value)

    async def status(
        self,
        *,
        id: int | None = None,
        custom_id: str | None = None,
        dest: str | None = None,
    ) -> object:
        if (id is None) == (custom_id is None):
            raise TypeError("status requires exactly one of id or custom_id")
        values = {"id": id, "custom_id": custom_id, "dest": dest}
        return await self._facade_request_async(_SMS_OPERATIONS["getSmsStatus"], None, values)


__all__ = ["AsyncSmsClient", "SmsClient"]
