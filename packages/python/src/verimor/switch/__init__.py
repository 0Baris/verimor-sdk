from __future__ import annotations

from collections.abc import Generator, Mapping

import httpx

from verimor._core import httpx_args, text_value
from verimor.switch._facade_gen import _OPERATIONS as _SWITCH_OPERATIONS
from verimor.switch._facade_gen import AsyncSwitchFacadeMixin, SwitchFacadeMixin
from verimor.switch.generated.client import AuthenticatedClient as GeneratedClient

DEFAULT_BASE_URL = "https://api.bulutsantralim.com"


class _QueryKeyAuth(httpx.Auth):
    def __init__(self, api_key: str) -> None:
        self.api_key = api_key

    def auth_flow(self, request: httpx.Request) -> Generator[httpx.Request, httpx.Response, None]:
        # The generator assumes bearer auth even for OpenAPI query API keys.
        request.headers.pop("Authorization", None)
        request.url = request.url.copy_merge_params({"key": self.api_key})
        yield request


class SwitchClient(SwitchFacadeMixin):
    product = "switch"

    def __init__(
        self,
        api_key: str,
        *,
        base_url: str = DEFAULT_BASE_URL,
        timeout: float = 30.0,
        transport: httpx.BaseTransport | None = None,
    ) -> None:
        self.api_key = api_key
        self._facade_credentials = {"key": api_key}
        self._facade_defaults = {}
        self.raw = GeneratedClient(
            token="",
            base_url=base_url.rstrip("/"),
            timeout=httpx.Timeout(timeout),
            httpx_args={**httpx_args(transport), "auth": _QueryKeyAuth(api_key)},
        )

    def originate(self, body: Mapping[str, object]) -> str:
        return text_value(self._facade_request(_SWITCH_OPERATIONS["originateCallPost"], body, {}))


class AsyncSwitchClient(AsyncSwitchFacadeMixin):
    product = "switch"

    def __init__(
        self,
        api_key: str,
        *,
        base_url: str = DEFAULT_BASE_URL,
        timeout: float = 30.0,
        transport: httpx.AsyncBaseTransport | None = None,
    ) -> None:
        self.api_key = api_key
        self._facade_credentials = {"key": api_key}
        self._facade_defaults = {}
        self.raw = GeneratedClient(
            token="",
            base_url=base_url.rstrip("/"),
            timeout=httpx.Timeout(timeout),
            httpx_args={**httpx_args(transport), "auth": _QueryKeyAuth(api_key)},
        )

    async def originate(self, body: Mapping[str, object]) -> str:
        value = await self._facade_request_async(_SWITCH_OPERATIONS["originateCallPost"], body, {})
        return text_value(value)


__all__ = ["AsyncSwitchClient", "SwitchClient"]
