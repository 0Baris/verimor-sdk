from __future__ import annotations

from collections.abc import Mapping

import httpx

from verimor._core import JsonObject, httpx_args, json_object
from verimor.whatsapp._facade_gen import _OPERATIONS as _WHATSAPP_OPERATIONS
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

    def send_otp(self, body: Mapping[str, object]) -> JsonObject:
        value = self._facade_request(
            _WHATSAPP_OPERATIONS["send_otp_v1_messages_otp_post"], body, {}
        )
        return json_object(value)

    def send_utility(self, body: Mapping[str, object]) -> JsonObject:
        value = self._facade_request(
            _WHATSAPP_OPERATIONS["send_utility_v1_messages_utility_post"], body, {}
        )
        return json_object(value)


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

    async def send_otp(self, body: Mapping[str, object]) -> JsonObject:
        value = await self._facade_request_async(
            _WHATSAPP_OPERATIONS["send_otp_v1_messages_otp_post"], body, {}
        )
        return json_object(value)

    async def send_utility(self, body: Mapping[str, object]) -> JsonObject:
        value = await self._facade_request_async(
            _WHATSAPP_OPERATIONS["send_utility_v1_messages_utility_post"], body, {}
        )
        return json_object(value)


__all__ = ["AsyncWhatsAppClient", "WhatsAppClient"]
