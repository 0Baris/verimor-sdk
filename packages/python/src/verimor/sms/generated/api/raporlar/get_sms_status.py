from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.get_sms_status_response_200_item import GetSmsStatusResponse200Item
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    username: str,
    password: str,
    id: int | Unset = UNSET,
    dest: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,
    custom_id: str | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["username"] = username

    params["password"] = password

    params["id"] = id

    params["dest"] = dest

    params["greater_than"] = greater_than

    params["custom_id"] = custom_id


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/v2/status",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | list[GetSmsStatusResponse200Item] | str | None:
    if response.status_code == 200:
        response_200 = []
        _response_200 = response.json()
        for response_200_item_data in (_response_200):
            response_200_item = GetSmsStatusResponse200Item.from_dict(response_200_item_data)



            response_200.append(response_200_item)

        return response_200

    if response.status_code == 400:
        response_400 = cast(Any, None)
        return response_400

    if response.status_code == 401:
        response_401 = cast(Any, None)
        return response_401

    if response.status_code == 403:
        response_403 = cast(Any, None)
        return response_403

    if response.status_code == 404:
        response_404 = response.text
        return response_404

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | list[GetSmsStatusResponse200Item] | str]:
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
    id: int | Unset = UNSET,
    dest: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,
    custom_id: str | Unset = UNSET,

) -> Response[Any | list[GetSmsStatusResponse200Item] | str]:
    """ Rapor Sorgulama (API ID)

     <p>Gönderim Raporu almak için kullanılır.</p><ul dir="auto"><li>id: Kampanya'ya API tarafından
    verilen ID'dir. id veya custom_id zorunludur.</li><li>custom_id: Kampanya'ya sizin tarafından
    verilen ID'dir. id veya custom_id zorunludur.</li><li>dest: Zorunlu değil. Kampanya'da belirli
    telefon numaralarına gönderilmiş mesajları sorgular.</li><li>greater_than: Verilen message_id'den
    büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için
    zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini
    vererek ikinci bir sorgu yapmalısınız.</li></ul><p>Bu endpoint /v2/balance, /v2/headers gibi
    endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst
    10).</p>

    Args:
        username (str):
        password (str):
        id (int | Unset):
        dest (str | Unset):
        greater_than (int | Unset):
        custom_id (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | list[GetSmsStatusResponse200Item] | str]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
id=id,
dest=dest,
greater_than=greater_than,
custom_id=custom_id,

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
    id: int | Unset = UNSET,
    dest: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,
    custom_id: str | Unset = UNSET,

) -> Any | list[GetSmsStatusResponse200Item] | str | None:
    """ Rapor Sorgulama (API ID)

     <p>Gönderim Raporu almak için kullanılır.</p><ul dir="auto"><li>id: Kampanya'ya API tarafından
    verilen ID'dir. id veya custom_id zorunludur.</li><li>custom_id: Kampanya'ya sizin tarafından
    verilen ID'dir. id veya custom_id zorunludur.</li><li>dest: Zorunlu değil. Kampanya'da belirli
    telefon numaralarına gönderilmiş mesajları sorgular.</li><li>greater_than: Verilen message_id'den
    büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için
    zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini
    vererek ikinci bir sorgu yapmalısınız.</li></ul><p>Bu endpoint /v2/balance, /v2/headers gibi
    endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst
    10).</p>

    Args:
        username (str):
        password (str):
        id (int | Unset):
        dest (str | Unset):
        greater_than (int | Unset):
        custom_id (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | list[GetSmsStatusResponse200Item] | str
     """


    return sync_detailed(
        client=client,
username=username,
password=password,
id=id,
dest=dest,
greater_than=greater_than,
custom_id=custom_id,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    id: int | Unset = UNSET,
    dest: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,
    custom_id: str | Unset = UNSET,

) -> Response[Any | list[GetSmsStatusResponse200Item] | str]:
    """ Rapor Sorgulama (API ID)

     <p>Gönderim Raporu almak için kullanılır.</p><ul dir="auto"><li>id: Kampanya'ya API tarafından
    verilen ID'dir. id veya custom_id zorunludur.</li><li>custom_id: Kampanya'ya sizin tarafından
    verilen ID'dir. id veya custom_id zorunludur.</li><li>dest: Zorunlu değil. Kampanya'da belirli
    telefon numaralarına gönderilmiş mesajları sorgular.</li><li>greater_than: Verilen message_id'den
    büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için
    zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini
    vererek ikinci bir sorgu yapmalısınız.</li></ul><p>Bu endpoint /v2/balance, /v2/headers gibi
    endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst
    10).</p>

    Args:
        username (str):
        password (str):
        id (int | Unset):
        dest (str | Unset):
        greater_than (int | Unset):
        custom_id (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | list[GetSmsStatusResponse200Item] | str]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
id=id,
dest=dest,
greater_than=greater_than,
custom_id=custom_id,

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
    id: int | Unset = UNSET,
    dest: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,
    custom_id: str | Unset = UNSET,

) -> Any | list[GetSmsStatusResponse200Item] | str | None:
    """ Rapor Sorgulama (API ID)

     <p>Gönderim Raporu almak için kullanılır.</p><ul dir="auto"><li>id: Kampanya'ya API tarafından
    verilen ID'dir. id veya custom_id zorunludur.</li><li>custom_id: Kampanya'ya sizin tarafından
    verilen ID'dir. id veya custom_id zorunludur.</li><li>dest: Zorunlu değil. Kampanya'da belirli
    telefon numaralarına gönderilmiş mesajları sorgular.</li><li>greater_than: Verilen message_id'den
    büyük mesajları sorgular. Bu parametre, içinde çok mesaj olan kampanyaların sorgulanması için
    zorunludur. Bu sorgu 100 mesaj döndürür, mesajların devamını almak için sonuçtaki son mesaj id'sini
    vererek ikinci bir sorgu yapmalısınız.</li></ul><p>Bu endpoint /v2/balance, /v2/headers gibi
    endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst
    10).</p>

    Args:
        username (str):
        password (str):
        id (int | Unset):
        dest (str | Unset):
        greater_than (int | Unset):
        custom_id (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | list[GetSmsStatusResponse200Item] | str
     """


    return (await asyncio_detailed(
        client=client,
username=username,
password=password,
id=id,
dest=dest,
greater_than=greater_than,
custom_id=custom_id,

    )).parsed
