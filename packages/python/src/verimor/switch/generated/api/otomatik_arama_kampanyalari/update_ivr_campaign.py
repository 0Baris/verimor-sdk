from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors




def _get_kwargs(
    id: str,
    *,
    status: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["status"] = status


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "patch",
        "url": "/ivr_campaigns/{id}.json".format(id=quote(str(id), safe=""),),
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

    if response.status_code == 403:
        response_403 = response.text
        return response_403

    if response.status_code == 404:
        response_404 = response.text
        return response_404

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
    id: str,
    *,
    client: AuthenticatedClient,
    status: str,

) -> Response[str]:
    """ Otomatik Arama Kampanyasını Başlatma/Durdurma

     Otomatik arama kampanyasını durdurmak veya tekrar başlatmak için kullanılır. PATCH ile status=off
    gönderilirse kampanya durur, status=on gönderilirse tekrar başlar.

    Args:
        id (str):
        status (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
status=status,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    id: str,
    *,
    client: AuthenticatedClient,
    status: str,

) -> str | None:
    """ Otomatik Arama Kampanyasını Başlatma/Durdurma

     Otomatik arama kampanyasını durdurmak veya tekrar başlatmak için kullanılır. PATCH ile status=off
    gönderilirse kampanya durur, status=on gönderilirse tekrar başlar.

    Args:
        id (str):
        status (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        id=id,
client=client,
status=status,

    ).parsed

async def asyncio_detailed(
    id: str,
    *,
    client: AuthenticatedClient,
    status: str,

) -> Response[str]:
    """ Otomatik Arama Kampanyasını Başlatma/Durdurma

     Otomatik arama kampanyasını durdurmak veya tekrar başlatmak için kullanılır. PATCH ile status=off
    gönderilirse kampanya durur, status=on gönderilirse tekrar başlar.

    Args:
        id (str):
        status (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
status=status,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    id: str,
    *,
    client: AuthenticatedClient,
    status: str,

) -> str | None:
    """ Otomatik Arama Kampanyasını Başlatma/Durdurma

     Otomatik arama kampanyasını durdurmak veya tekrar başlatmak için kullanılır. PATCH ile status=off
    gönderilirse kampanya durur, status=on gönderilirse tekrar başlar.

    Args:
        id (str):
        status (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        id=id,
client=client,
status=status,

    )).parsed
