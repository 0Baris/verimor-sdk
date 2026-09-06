from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.send_sms_json_body import SendSmsJsonBody
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    body: SendSmsJsonBody | Unset = UNSET,

) -> dict[str, Any]:
    headers: dict[str, Any] = {}


    

    

    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/v2/send.json",
    }

    
    if not isinstance(body, Unset):
        _kwargs["json"] = body.to_dict()

    headers["Content-Type"] = "application/json"

    _kwargs["headers"] = headers
    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> str | None:
    if response.status_code == 200:
        response_200 = response.text
        return response_200

    if response.status_code == 400:
        response_400 = response.text
        return response_400

    if response.status_code == 401:
        response_401 = response.text
        return response_401

    if response.status_code == 403:
        response_403 = response.text
        return response_403

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[str]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient | Client,
    body: SendSmsJsonBody | Unset = UNSET,

) -> Response[str]:
    """ SMS Gönderme (JSON)

     JSON formatında toplu SMS gönderimi için kullanılır. Birden fazla farklı mesajı farklı numaralara
    gönderebilirsiniz. Bu endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240
    istek gönderebilirsiniz (burst 80).

    Args:
        body (SendSmsJsonBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        body=body,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient | Client,
    body: SendSmsJsonBody | Unset = UNSET,

) -> str | None:
    """ SMS Gönderme (JSON)

     JSON formatında toplu SMS gönderimi için kullanılır. Birden fazla farklı mesajı farklı numaralara
    gönderebilirsiniz. Bu endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240
    istek gönderebilirsiniz (burst 80).

    Args:
        body (SendSmsJsonBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
body=body,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,
    body: SendSmsJsonBody | Unset = UNSET,

) -> Response[str]:
    """ SMS Gönderme (JSON)

     JSON formatında toplu SMS gönderimi için kullanılır. Birden fazla farklı mesajı farklı numaralara
    gönderebilirsiniz. Bu endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240
    istek gönderebilirsiniz (burst 80).

    Args:
        body (SendSmsJsonBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        body=body,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient | Client,
    body: SendSmsJsonBody | Unset = UNSET,

) -> str | None:
    """ SMS Gönderme (JSON)

     JSON formatında toplu SMS gönderimi için kullanılır. Birden fazla farklı mesajı farklı numaralara
    gönderebilirsiniz. Bu endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240
    istek gönderebilirsiniz (burst 80).

    Args:
        body (SendSmsJsonBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
body=body,

    )).parsed
