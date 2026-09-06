from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.get_v2_blacklists_response_200 import GetV2BlacklistsResponse200
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    username: str,
    password: str,
    offset: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["username"] = username

    params["password"] = password

    params["offset"] = offset

    params["limit"] = limit


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/v2/blacklists",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | GetV2BlacklistsResponse200 | None:
    if response.status_code == 200:
        response_200 = GetV2BlacklistsResponse200.from_dict(response.json())



        return response_200

    if response.status_code == 400:
        response_400 = cast(Any, None)
        return response_400

    if response.status_code == 401:
        response_401 = cast(Any, None)
        return response_401

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | GetV2BlacklistsResponse200]:
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
    offset: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | GetV2BlacklistsResponse200]:
    """ Kara Liste Görüntüleme

     <p>Kara listedeki numaraları listelemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre
    ile kimlik doğrulaması gerektirir.</p><p><strong>Total</strong>&nbsp;değeri toplam kayıt sayısını
    verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip
    tekrar sorgulamalısınız.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız
    sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        offset (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | GetV2BlacklistsResponse200]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
offset=offset,
limit=limit,

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
    offset: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | GetV2BlacklistsResponse200 | None:
    """ Kara Liste Görüntüleme

     <p>Kara listedeki numaraları listelemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre
    ile kimlik doğrulaması gerektirir.</p><p><strong>Total</strong>&nbsp;değeri toplam kayıt sayısını
    verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip
    tekrar sorgulamalısınız.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız
    sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        offset (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | GetV2BlacklistsResponse200
     """


    return sync_detailed(
        client=client,
username=username,
password=password,
offset=offset,
limit=limit,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    offset: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | GetV2BlacklistsResponse200]:
    """ Kara Liste Görüntüleme

     <p>Kara listedeki numaraları listelemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre
    ile kimlik doğrulaması gerektirir.</p><p><strong>Total</strong>&nbsp;değeri toplam kayıt sayısını
    verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip
    tekrar sorgulamalısınız.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız
    sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        offset (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | GetV2BlacklistsResponse200]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
offset=offset,
limit=limit,

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
    offset: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | GetV2BlacklistsResponse200 | None:
    """ Kara Liste Görüntüleme

     <p>Kara listedeki numaraları listelemek için kullanılır.</p><p>Bu endpoint, kullanıcı adı ve şifre
    ile kimlik doğrulaması gerektirir.</p><p><strong>Total</strong>&nbsp;değeri toplam kayıt sayısını
    verir, bir sorguda en fazla 100 adet kayıt dönülür. Devamını almak için offset değerini yükseltip
    tekrar sorgulamalısınız.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız
    sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        offset (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | GetV2BlacklistsResponse200
     """


    return (await asyncio_detailed(
        client=client,
username=username,
password=password,
offset=offset,
limit=limit,

    )).parsed
