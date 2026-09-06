from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors




def _get_kwargs(
    id: int,
    *,
    name: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["name"] = name


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "patch",
        "url": "/contact_groups/{id}".format(id=quote(str(id), safe=""),),
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
    id: int,
    *,
    client: AuthenticatedClient,
    name: str,

) -> Response[str]:
    """ Grup Güncelleme

     Mevcut bir kişi grubunu günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. PATCH
    metodu ile api.bulutsantralim.com/contact_groups/{id} adresine istek gönderilir. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili
    HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        id (int):
        name (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
name=name,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    id: int,
    *,
    client: AuthenticatedClient,
    name: str,

) -> str | None:
    """ Grup Güncelleme

     Mevcut bir kişi grubunu günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. PATCH
    metodu ile api.bulutsantralim.com/contact_groups/{id} adresine istek gönderilir. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili
    HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        id (int):
        name (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        id=id,
client=client,
name=name,

    ).parsed

async def asyncio_detailed(
    id: int,
    *,
    client: AuthenticatedClient,
    name: str,

) -> Response[str]:
    """ Grup Güncelleme

     Mevcut bir kişi grubunu günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. PATCH
    metodu ile api.bulutsantralim.com/contact_groups/{id} adresine istek gönderilir. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili
    HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        id (int):
        name (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
name=name,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    id: int,
    *,
    client: AuthenticatedClient,
    name: str,

) -> str | None:
    """ Grup Güncelleme

     Mevcut bir kişi grubunu günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. PATCH
    metodu ile api.bulutsantralim.com/contact_groups/{id} adresine istek gönderilir. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili
    HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        id (int):
        name (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        id=id,
client=client,
name=name,

    )).parsed
