from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors




def _get_kwargs(
    *,
    call_uuid: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["call_uuid"] = call_uuid


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/recording_url",
        "params": params,
    }


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
    client: AuthenticatedClient,
    call_uuid: str,

) -> Response[str]:
    """ Ses Kaydı için Geçici URL Oluşturma

     Santralinizdeki veya Google Drive'a aktarılmış ses kayıtlarınıza erişmek için geçici bir URL
    oluşturur. URL 1 saat geçerlidir ve dakikada en fazla 5 istek yapılabilir.

    Args:
        call_uuid (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        call_uuid=call_uuid,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    call_uuid: str,

) -> str | None:
    """ Ses Kaydı için Geçici URL Oluşturma

     Santralinizdeki veya Google Drive'a aktarılmış ses kayıtlarınıza erişmek için geçici bir URL
    oluşturur. URL 1 saat geçerlidir ve dakikada en fazla 5 istek yapılabilir.

    Args:
        call_uuid (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
call_uuid=call_uuid,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    call_uuid: str,

) -> Response[str]:
    """ Ses Kaydı için Geçici URL Oluşturma

     Santralinizdeki veya Google Drive'a aktarılmış ses kayıtlarınıza erişmek için geçici bir URL
    oluşturur. URL 1 saat geçerlidir ve dakikada en fazla 5 istek yapılabilir.

    Args:
        call_uuid (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        call_uuid=call_uuid,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    call_uuid: str,

) -> str | None:
    """ Ses Kaydı için Geçici URL Oluşturma

     Santralinizdeki veya Google Drive'a aktarılmış ses kayıtlarınıza erişmek için geçici bir URL
    oluşturur. URL 1 saat geçerlidir ve dakikada en fazla 5 istek yapılabilir.

    Args:
        call_uuid (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
call_uuid=call_uuid,

    )).parsed
