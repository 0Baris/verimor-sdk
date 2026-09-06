from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.get_v2_inbound_messages_response_200_item import GetV2InboundMessagesResponse200Item
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    username: str,
    password: str,
    from_time: str | Unset = UNSET,
    to_time: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["username"] = username

    params["password"] = password

    params["from_time"] = from_time

    params["to_time"] = to_time

    params["greater_than"] = greater_than


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/v2/inbound_messages",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> list[GetV2InboundMessagesResponse200Item] | str | None:
    if response.status_code == 200:
        response_200 = []
        _response_200 = response.json()
        for response_200_item_data in (_response_200):
            response_200_item = GetV2InboundMessagesResponse200Item.from_dict(response_200_item_data)



            response_200.append(response_200_item)

        return response_200

    if response.status_code == 400:
        response_400 = response.text
        return response_400

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[list[GetV2InboundMessagesResponse200Item] | str]:
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
    from_time: str | Unset = UNSET,
    to_time: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,

) -> Response[list[GetV2InboundMessagesResponse200Item] | str]:
    """ Gelen SMS Sorgulama

     <p>Bu API, gelen SMS'lerinizi sorgulamak için kullanılır.</p><p>API, hesabınıza gelen SMS'leri iki
    farklı yöntemle teslim edebilir. Bunlar PUSH ve GET yöntemleridir.</p><p>Bu servis&nbsp;<strong>HTTP
    GET ile Gelen SMS Alımı</strong>&nbsp;hizmetini sağlar. PUSH ile Gelen SMS Alımı konusu için Inbound
    Bölümü altındaki ilgili başlığa bakabilirsiniz.<br></p><p>Sorgulama, belirli bir zaman aralığında
    veya belirli bir message_id'den büyük mesajları almak için yapılabilir.</p><p>Bu endpoint
    /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20
    istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        from_time (str | Unset):
        to_time (str | Unset):
        greater_than (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[list[GetV2InboundMessagesResponse200Item] | str]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
from_time=from_time,
to_time=to_time,
greater_than=greater_than,

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
    from_time: str | Unset = UNSET,
    to_time: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,

) -> list[GetV2InboundMessagesResponse200Item] | str | None:
    """ Gelen SMS Sorgulama

     <p>Bu API, gelen SMS'lerinizi sorgulamak için kullanılır.</p><p>API, hesabınıza gelen SMS'leri iki
    farklı yöntemle teslim edebilir. Bunlar PUSH ve GET yöntemleridir.</p><p>Bu servis&nbsp;<strong>HTTP
    GET ile Gelen SMS Alımı</strong>&nbsp;hizmetini sağlar. PUSH ile Gelen SMS Alımı konusu için Inbound
    Bölümü altındaki ilgili başlığa bakabilirsiniz.<br></p><p>Sorgulama, belirli bir zaman aralığında
    veya belirli bir message_id'den büyük mesajları almak için yapılabilir.</p><p>Bu endpoint
    /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20
    istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        from_time (str | Unset):
        to_time (str | Unset):
        greater_than (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        list[GetV2InboundMessagesResponse200Item] | str
     """


    return sync_detailed(
        client=client,
username=username,
password=password,
from_time=from_time,
to_time=to_time,
greater_than=greater_than,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    from_time: str | Unset = UNSET,
    to_time: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,

) -> Response[list[GetV2InboundMessagesResponse200Item] | str]:
    """ Gelen SMS Sorgulama

     <p>Bu API, gelen SMS'lerinizi sorgulamak için kullanılır.</p><p>API, hesabınıza gelen SMS'leri iki
    farklı yöntemle teslim edebilir. Bunlar PUSH ve GET yöntemleridir.</p><p>Bu servis&nbsp;<strong>HTTP
    GET ile Gelen SMS Alımı</strong>&nbsp;hizmetini sağlar. PUSH ile Gelen SMS Alımı konusu için Inbound
    Bölümü altındaki ilgili başlığa bakabilirsiniz.<br></p><p>Sorgulama, belirli bir zaman aralığında
    veya belirli bir message_id'den büyük mesajları almak için yapılabilir.</p><p>Bu endpoint
    /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20
    istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        from_time (str | Unset):
        to_time (str | Unset):
        greater_than (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[list[GetV2InboundMessagesResponse200Item] | str]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
from_time=from_time,
to_time=to_time,
greater_than=greater_than,

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
    from_time: str | Unset = UNSET,
    to_time: str | Unset = UNSET,
    greater_than: int | Unset = UNSET,

) -> list[GetV2InboundMessagesResponse200Item] | str | None:
    """ Gelen SMS Sorgulama

     <p>Bu API, gelen SMS'lerinizi sorgulamak için kullanılır.</p><p>API, hesabınıza gelen SMS'leri iki
    farklı yöntemle teslim edebilir. Bunlar PUSH ve GET yöntemleridir.</p><p>Bu servis&nbsp;<strong>HTTP
    GET ile Gelen SMS Alımı</strong>&nbsp;hizmetini sağlar. PUSH ile Gelen SMS Alımı konusu için Inbound
    Bölümü altındaki ilgili başlığa bakabilirsiniz.<br></p><p>Sorgulama, belirli bir zaman aralığında
    veya belirli bir message_id'den büyük mesajları almak için yapılabilir.</p><p>Bu endpoint
    /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu paylaşır — dakikada toplam 20
    istek gönderebilirsiniz (burst 10).</p>

    Args:
        username (str):
        password (str):
        from_time (str | Unset):
        to_time (str | Unset):
        greater_than (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        list[GetV2InboundMessagesResponse200Item] | str
     """


    return (await asyncio_detailed(
        client=client,
username=username,
password=password,
from_time=from_time,
to_time=to_time,
greater_than=greater_than,

    )).parsed
