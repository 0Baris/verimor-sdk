from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.http_validation_error import HTTPValidationError
from ...models.message_response import MessageResponse
from ...models.template_message_request import TemplateMessageRequest
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    body: TemplateMessageRequest,
    x_api_key: None | str | Unset = UNSET,

) -> dict[str, Any]:
    headers: dict[str, Any] = {}
    if not isinstance(x_api_key, Unset):
        headers["x-api-key"] = x_api_key



    

    

    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/v1/messages/utility",
    }

    _kwargs["json"] = body.to_dict()

    headers["Content-Type"] = "application/json"

    _kwargs["headers"] = headers
    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | HTTPValidationError | MessageResponse | None:
    if response.status_code == 202:
        response_202 = MessageResponse.from_dict(response.json())



        return response_202

    if response.status_code == 401:
        response_401 = cast(Any, None)
        return response_401

    if response.status_code == 422:
        response_422 = HTTPValidationError.from_dict(response.json())



        return response_422

    if response.status_code == 429:
        response_429 = cast(Any, None)
        return response_429

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | HTTPValidationError | MessageResponse]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient | Client,
    body: TemplateMessageRequest,
    x_api_key: None | str | Unset = UNSET,

) -> Response[Any | HTTPValidationError | MessageResponse]:
    """ Utility / İşlemsel Mesaj Gönder

     WhatsApp UTILITY kategorisindeki onaylı şablon ile işlemsel mesaj gönderir (sipariş onayı, fatura
    bildirimi vb.).

    Args:
        x_api_key (None | str | Unset):
        body (TemplateMessageRequest):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | HTTPValidationError | MessageResponse]
     """


    kwargs = _get_kwargs(
        body=body,
x_api_key=x_api_key,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient | Client,
    body: TemplateMessageRequest,
    x_api_key: None | str | Unset = UNSET,

) -> Any | HTTPValidationError | MessageResponse | None:
    """ Utility / İşlemsel Mesaj Gönder

     WhatsApp UTILITY kategorisindeki onaylı şablon ile işlemsel mesaj gönderir (sipariş onayı, fatura
    bildirimi vb.).

    Args:
        x_api_key (None | str | Unset):
        body (TemplateMessageRequest):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | HTTPValidationError | MessageResponse
     """


    return sync_detailed(
        client=client,
body=body,
x_api_key=x_api_key,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,
    body: TemplateMessageRequest,
    x_api_key: None | str | Unset = UNSET,

) -> Response[Any | HTTPValidationError | MessageResponse]:
    """ Utility / İşlemsel Mesaj Gönder

     WhatsApp UTILITY kategorisindeki onaylı şablon ile işlemsel mesaj gönderir (sipariş onayı, fatura
    bildirimi vb.).

    Args:
        x_api_key (None | str | Unset):
        body (TemplateMessageRequest):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | HTTPValidationError | MessageResponse]
     """


    kwargs = _get_kwargs(
        body=body,
x_api_key=x_api_key,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient | Client,
    body: TemplateMessageRequest,
    x_api_key: None | str | Unset = UNSET,

) -> Any | HTTPValidationError | MessageResponse | None:
    """ Utility / İşlemsel Mesaj Gönder

     WhatsApp UTILITY kategorisindeki onaylı şablon ile işlemsel mesaj gönderir (sipariş onayı, fatura
    bildirimi vb.).

    Args:
        x_api_key (None | str | Unset):
        body (TemplateMessageRequest):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | HTTPValidationError | MessageResponse
     """


    return (await asyncio_detailed(
        client=client,
body=body,
x_api_key=x_api_key,

    )).parsed
