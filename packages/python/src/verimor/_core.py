from __future__ import annotations

import math
from collections.abc import Mapping
from typing import Any, Literal, Protocol, Self, cast

import httpx

Product = Literal["sms", "switch", "whatsapp"]
JsonObject = dict[str, Any]


class VerimorApiError(Exception):
    """A non-successful response returned by a Verimor API."""

    def __init__(self, product: Product, status: int, body: object) -> None:
        self.product = product
        self.status = status
        self.body = body
        super().__init__(f"{product} API returned HTTP {status}")


class SyncRawClient(Protocol):
    def get_httpx_client(self) -> httpx.Client: ...


class AsyncRawClient(Protocol):
    def get_async_httpx_client(self) -> httpx.AsyncClient: ...


def httpx_args(
    transport: httpx.BaseTransport | httpx.AsyncBaseTransport | None,
) -> dict[str, object]:
    return {} if transport is None else {"transport": transport}


def response_body(response: httpx.Response) -> object:
    content_type = response.headers.get("content-type", "")
    if "json" in content_type:
        try:
            return response.json()
        except ValueError:
            pass
    return response.text


def check_response(product: Product, response: httpx.Response) -> httpx.Response:
    if not response.is_success:
        raise VerimorApiError(product, response.status_code, response_body(response))
    return response


def json_object(response: httpx.Response) -> JsonObject:
    value = response.json()
    if not isinstance(value, dict):
        raise TypeError("Expected a JSON object response")
    return cast(JsonObject, value)


class SyncClientBase:
    product: Product
    raw: SyncRawClient

    def _request(
        self,
        method: str,
        path: str,
        *,
        params: Mapping[str, str | int] | None = None,
        headers: Mapping[str, str] | None = None,
        json: object | None = None,
    ) -> httpx.Response:
        response = self.raw.get_httpx_client().request(
            method, path, params=params, headers=headers, json=json
        )
        return check_response(self.product, response)

    def __enter__(self) -> Self:
        self.raw.get_httpx_client()
        return self

    def __exit__(self, *_: object) -> None:
        self.raw.get_httpx_client().close()


class AsyncClientBase:
    product: Product
    raw: AsyncRawClient

    async def _request(
        self,
        method: str,
        path: str,
        *,
        params: Mapping[str, str | int] | None = None,
        headers: Mapping[str, str] | None = None,
        json: object | None = None,
    ) -> httpx.Response:
        response = await self.raw.get_async_httpx_client().request(
            method, path, params=params, headers=headers, json=json
        )
        return check_response(self.product, response)

    async def __aenter__(self) -> Self:
        self.raw.get_async_httpx_client()
        return self

    async def __aexit__(self, *_: object) -> None:
        await self.raw.get_async_httpx_client().aclose()


def balance_value(response: httpx.Response) -> float:
    try:
        value = float(response.text.strip())
    except ValueError as error:
        raise TypeError("Invalid balance response") from error
    if not math.isfinite(value):
        raise TypeError("Invalid balance response")
    return value


def request_data(body: Mapping[str, object], **credentials: str) -> dict[str, object]:
    return {**body, **credentials}
