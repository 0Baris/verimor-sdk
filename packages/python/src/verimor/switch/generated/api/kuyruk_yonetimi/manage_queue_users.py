from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors




def _get_kwargs(
    *,
    queue_number: str,
    user_list: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["queue_number"] = queue_number

    params["user_list"] = user_list


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/queue/manage_users",
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
    *,
    client: AuthenticatedClient,
    queue_number: str,
    user_list: str,

) -> Response[str]:
    """ Kuyruğa Dahili Ekleme, Çıkarma veya Yer Değiştirme

     Santralinizdeki kuyruklara dahili ekleme, çıkarma veya yer değiştirme için kullanılır. Bunun için
    HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili
    HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        queue_number (str):
        user_list (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        queue_number=queue_number,
user_list=user_list,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    queue_number: str,
    user_list: str,

) -> str | None:
    """ Kuyruğa Dahili Ekleme, Çıkarma veya Yer Değiştirme

     Santralinizdeki kuyruklara dahili ekleme, çıkarma veya yer değiştirme için kullanılır. Bunun için
    HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili
    HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        queue_number (str):
        user_list (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
queue_number=queue_number,
user_list=user_list,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    queue_number: str,
    user_list: str,

) -> Response[str]:
    """ Kuyruğa Dahili Ekleme, Çıkarma veya Yer Değiştirme

     Santralinizdeki kuyruklara dahili ekleme, çıkarma veya yer değiştirme için kullanılır. Bunun için
    HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili
    HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        queue_number (str):
        user_list (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        queue_number=queue_number,
user_list=user_list,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    queue_number: str,
    user_list: str,

) -> str | None:
    """ Kuyruğa Dahili Ekleme, Çıkarma veya Yer Değiştirme

     Santralinizdeki kuyruklara dahili ekleme, çıkarma veya yer değiştirme için kullanılır. Bunun için
    HTTP GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili
    HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        queue_number (str):
        user_list (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
queue_number=queue_number,
user_list=user_list,

    )).parsed
