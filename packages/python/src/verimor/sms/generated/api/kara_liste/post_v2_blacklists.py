from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors




def _get_kwargs(
    *,
    username: str,
    password: str,
    phones: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["username"] = username

    params["password"] = password

    params["phones"] = phones


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/v2/blacklists",
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
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    phones: str,

) -> Response[str]:
    """ Kara Liste Ekleme

     <p>Kara listeye numara eklemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile kimlik
    doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız
    sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        phones (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
phones=phones,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    phones: str,

) -> str | None:
    """ Kara Liste Ekleme

     <p>Kara listeye numara eklemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile kimlik
    doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız
    sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        phones (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
username=username,
password=password,
phones=phones,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    phones: str,

) -> Response[str]:
    """ Kara Liste Ekleme

     <p>Kara listeye numara eklemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile kimlik
    doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız
    sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        phones (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
phones=phones,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    phones: str,

) -> str | None:
    """ Kara Liste Ekleme

     <p>Kara listeye numara eklemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre ile kimlik
    doğrulaması gerektirir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız
    sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        phones (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
username=username,
password=password,
phones=phones,

    )).parsed
