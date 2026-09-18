from __future__ import annotations

from collections.abc import Mapping

import httpx

from verimor._core import JsonObject, httpx_args, json_object
from verimor.whatsapp._facade_gen import AsyncWhatsAppFacadeMixin, WhatsAppFacadeMixin
from verimor.whatsapp.generated.client import Client as GeneratedClient

DEFAULT_BASE_URL = "https://wapi.verimor.com.tr"


class WhatsAppClient(WhatsAppFacadeMixin):
    product = "whatsapp"

    def __init__(
        self,
        api_key: str,
        *,
        base_url: str = DEFAULT_BASE_URL,
        timeout: float = 30.0,
        transport: httpx.BaseTransport | None = None,
    ) -> None:
        self.api_key = api_key
        self._facade_credentials = {"x-api-key": api_key}
        self._facade_defaults = {}
        self.raw = GeneratedClient(
            headers={"x-api-key": api_key},
            base_url=base_url.rstrip("/"),
            timeout=httpx.Timeout(timeout),
            httpx_args=httpx_args(transport),
        )

    def _send(self, path: str, body: Mapping[str, object]) -> JsonObject:
        response = self._request("POST", path, headers={"x-api-key": self.api_key}, json=dict(body))
        return json_object(response)

    def send_otp(self, body: Mapping[str, object]) -> JsonObject:
        return self._send("/v1/messages/otp", body)

    def send_utility(self, body: Mapping[str, object]) -> JsonObject:
        return self._send("/v1/messages/utility", body)


class AsyncWhatsAppClient(AsyncWhatsAppFacadeMixin):
    product = "whatsapp"

    def __init__(
        self,
        api_key: str,
        *,
        base_url: str = DEFAULT_BASE_URL,
        timeout: float = 30.0,
        transport: httpx.AsyncBaseTransport | None = None,
    ) -> None:
        self.api_key = api_key
        self._facade_credentials = {"x-api-key": api_key}
        self._facade_defaults = {}
        self.raw = GeneratedClient(
            headers={"x-api-key": api_key},
            base_url=base_url.rstrip("/"),
            timeout=httpx.Timeout(timeout),
            httpx_args=httpx_args(transport),
        )

    async def _send(self, path: str, body: Mapping[str, object]) -> JsonObject:
        response = await self._request(
            "POST", path, headers={"x-api-key": self.api_key}, json=dict(body)
        )
        return json_object(response)

    async def send_otp(self, body: Mapping[str, object]) -> JsonObject:
        return await self._send("/v1/messages/otp", body)

    async def send_utility(self, body: Mapping[str, object]) -> JsonObject:
        return await self._send("/v1/messages/utility", body)


__all__ = ["AsyncWhatsAppClient", "WhatsAppClient"]
