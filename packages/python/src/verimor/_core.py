from __future__ import annotations

import math
import re
from collections.abc import Mapping
from typing import Any, Literal, Protocol, Self, cast
from urllib.parse import quote

import httpx

Product = Literal["sms", "switch", "whatsapp"]
JsonObject = dict[str, Any]
QueryValue = str | int | float | bool | None


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


def _snake_case(value: str) -> str:
    return re.sub(r"(?<!^)(?=[A-Z])", "_", value).lower()


def _descriptor_mapping(operation: Mapping[str, object], name: str) -> Mapping[str, object]:
    value = operation.get(name, {})
    if not isinstance(value, Mapping):
        raise TypeError(f"Invalid façade descriptor: {name}")
    return value


def _descriptor_list(operation: Mapping[str, object], name: str) -> list[object]:
    value = operation.get(name, [])
    if not isinstance(value, list):
        raise TypeError(f"Invalid façade descriptor: {name}")
    return value


def _input_value(values: Mapping[str, object], public_name: str, wire_name: str) -> object:
    for name in (_snake_case(public_name), public_name, wire_name):
        if name in values:
            return values[name]
    return None


def _add_param(params: list[tuple[str, QueryValue]], name: str, value: object) -> None:
    if value is None:
        return
    if isinstance(value, list | tuple):
        for item in value:
            _add_param(params, name, item)
    else:
        normalized = value if isinstance(value, str | int | float | bool) else str(value)
        params.append((name, normalized))


def _prepare_facade_request(
    operation: Mapping[str, object],
    input: Mapping[str, object] | None,
    supplied_values: Mapping[str, object],
    credentials: Mapping[str, str],
    defaults: Mapping[str, object],
) -> tuple[
    str,
    list[tuple[str, QueryValue]],
    dict[str, str],
    dict[str, object] | None,
    str | None,
]:
    has_body = operation.get("hasBody") is True
    parameters = _descriptor_list(operation, "parameters")
    input_copy = dict(input or {})
    values = dict(supplied_values)
    if has_body and not parameters:
        body: dict[str, object] | None = {**input_copy, **values}
        values = {}
    elif has_body:
        body = input_copy
    else:
        body = None
        values = {**input_copy, **values}

    for wire_name, option_name in _descriptor_mapping(operation, "clientDefaults").items():
        if not isinstance(wire_name, str) or not isinstance(option_name, str):
            raise TypeError("Invalid façade client default")
        target = body if body is not None else values
        if wire_name not in target and option_name in defaults:
            target[wire_name] = defaults[option_name]
        if wire_name not in target:
            raise TypeError(f"{operation['operationId']} requires {wire_name}")

    credential_locations = _descriptor_mapping(operation, "credentials")
    for name, location in credential_locations.items():
        if isinstance(name, str) and location == "body" and body is not None:
            body[name] = credentials[name]

    operation_id = str(operation["operationId"])
    for field in _descriptor_list(operation, "bodyRequiredFields"):
        if isinstance(field, str) and (body is None or body.get(field) is None):
            raise TypeError(f"{operation_id} requires {field}")

    path = str(operation["path"])
    params: list[tuple[str, QueryValue]] = []
    headers: dict[str, str] = {}
    for raw_parameter in parameters:
        if not isinstance(raw_parameter, Mapping):
            raise TypeError("Invalid façade parameter")
        wire_name = str(raw_parameter["wireName"])
        public_name = str(raw_parameter["publicName"])
        value = _input_value(values, public_name, wire_name)
        if raw_parameter.get("required") is True and value is None:
            raise TypeError(f"{operation_id} requires {_snake_case(public_name)}")
        location = raw_parameter["location"]
        if location == "path" and value is not None:
            path = path.replace(f"{{{wire_name}}}", quote(str(value), safe=""))
        elif location == "query":
            _add_param(params, wire_name, value)
        elif location == "header" and value is not None:
            headers[wire_name] = str(value)

    for name, location in credential_locations.items():
        if not isinstance(name, str) or name not in credentials:
            continue
        if location == "query":
            _add_param(params, name, credentials[name])
        elif location == "header":
            headers[name] = credentials[name]

    content_type = operation.get("contentType")
    return path, params, headers, body, content_type if isinstance(content_type, str) else None


def _facade_value(operation: Mapping[str, object], response: httpx.Response) -> object:
    kind = operation["responseKind"]
    if kind == "empty":
        return None
    if kind == "text":
        return response.text.strip()
    if kind == "binary":
        return response.content
    return response.json()


class SyncClientBase:
    product: Product
    raw: SyncRawClient
    _facade_credentials: Mapping[str, str]
    _facade_defaults: Mapping[str, object]

    def _request(
        self,
        method: str,
        path: str,
        *,
        params: Mapping[str, QueryValue] | list[tuple[str, QueryValue]] | None = None,
        headers: Mapping[str, str] | None = None,
        json: object | None = None,
        data: Mapping[str, object] | None = None,
    ) -> httpx.Response:
        response = self.raw.get_httpx_client().request(
            method, path, params=params, headers=headers, json=json, data=data
        )
        return check_response(self.product, response)

    def _facade_request(
        self,
        operation: Mapping[str, object],
        input: Mapping[str, object] | None,
        values: Mapping[str, object],
    ) -> object:
        path, params, headers, body, content_type = _prepare_facade_request(
            operation, input, values, self._facade_credentials, self._facade_defaults
        )
        response = self._request(
            str(operation["method"]),
            path,
            params=params,
            headers=headers,
            json=body
            if body is not None and content_type != "application/x-www-form-urlencoded"
            else None,
            data=body if content_type == "application/x-www-form-urlencoded" else None,
        )
        return _facade_value(operation, response)

    def __enter__(self) -> Self:
        self.raw.get_httpx_client()
        return self

    def __exit__(self, *_: object) -> None:
        self.raw.get_httpx_client().close()


class AsyncClientBase:
    product: Product
    raw: AsyncRawClient
    _facade_credentials: Mapping[str, str]
    _facade_defaults: Mapping[str, object]

    async def _request(
        self,
        method: str,
        path: str,
        *,
        params: Mapping[str, QueryValue] | list[tuple[str, QueryValue]] | None = None,
        headers: Mapping[str, str] | None = None,
        json: object | None = None,
        data: Mapping[str, object] | None = None,
    ) -> httpx.Response:
        response = await self.raw.get_async_httpx_client().request(
            method, path, params=params, headers=headers, json=json, data=data
        )
        return check_response(self.product, response)

    async def _facade_request_async(
        self,
        operation: Mapping[str, object],
        input: Mapping[str, object] | None,
        values: Mapping[str, object],
    ) -> object:
        path, params, headers, body, content_type = _prepare_facade_request(
            operation, input, values, self._facade_credentials, self._facade_defaults
        )
        response = await self._request(
            str(operation["method"]),
            path,
            params=params,
            headers=headers,
            json=body
            if body is not None and content_type != "application/x-www-form-urlencoded"
            else None,
            data=body if content_type == "application/x-www-form-urlencoded" else None,
        )
        return _facade_value(operation, response)

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
