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
    username: str,
    password: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["username"] = username

    params["password"] = password


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "delete",
        "url": "/v2/blacklists/{id}".format(id=quote(str(id), safe=""),),
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
    client: AuthenticatedClient | Client,
    username: str,
    password: str,

) -> Response[str]:
    """ Kara Listeden Silme

     <p>Kara listeden numara(lar)ı silmek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile
    kimlik doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı
    hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        id (str):
        username (str):
        password (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
username=username,
password=password,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    id: str,
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,

) -> str | None:
    """ Kara Listeden Silme

     <p>Kara listeden numara(lar)ı silmek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile
    kimlik doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı
    hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        id (str):
        username (str):
        password (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        id=id,
client=client,
username=username,
password=password,

    ).parsed

async def asyncio_detailed(
    id: str,
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,

) -> Response[str]:
    """ Kara Listeden Silme

     <p>Kara listeden numara(lar)ı silmek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile
    kimlik doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı
    hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        id (str):
        username (str):
        password (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
username=username,
password=password,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    id: str,
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,

) -> str | None:
    """ Kara Listeden Silme

     <p>Kara listeden numara(lar)ı silmek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile
    kimlik doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı
    hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        id (str):
        username (str):
        password (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        id=id,
client=client,
username=username,
password=password,

    )).parsed
