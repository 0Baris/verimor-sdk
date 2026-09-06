from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors




def _get_kwargs(
    *,
    uuid: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["uuid"] = uuid


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/voicemail_recording_url",
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
    uuid: str,

) -> Response[str]:
    """ Telesekreter Ses Kaydı için Geçici URL Oluşturma

     CDR'ın ses kaydına erişimde olduğu gibi, bu ses kayıtlarına erişim de iki aşamalıdır. Birinci
    aşamada URL elde edilir. İkinci aşamada ise o URL'den ses dosyası indirilir/dinlenir. HTTP POST
    metodu ile api.bulutsantralim.com adresine parametreler gönderilir. İstek başarılı olduğunda HTTP
    200 Status kodu ile mesajın Body'sinde ses kaydına ait olan bir URL döner. İstek başarısız olduğunda
    ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. URL yaşam süresi 1 saattir.

    Args:
        uuid (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        uuid=uuid,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    uuid: str,

) -> str | None:
    """ Telesekreter Ses Kaydı için Geçici URL Oluşturma

     CDR'ın ses kaydına erişimde olduğu gibi, bu ses kayıtlarına erişim de iki aşamalıdır. Birinci
    aşamada URL elde edilir. İkinci aşamada ise o URL'den ses dosyası indirilir/dinlenir. HTTP POST
    metodu ile api.bulutsantralim.com adresine parametreler gönderilir. İstek başarılı olduğunda HTTP
    200 Status kodu ile mesajın Body'sinde ses kaydına ait olan bir URL döner. İstek başarısız olduğunda
    ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. URL yaşam süresi 1 saattir.

    Args:
        uuid (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
uuid=uuid,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    uuid: str,

) -> Response[str]:
    """ Telesekreter Ses Kaydı için Geçici URL Oluşturma

     CDR'ın ses kaydına erişimde olduğu gibi, bu ses kayıtlarına erişim de iki aşamalıdır. Birinci
    aşamada URL elde edilir. İkinci aşamada ise o URL'den ses dosyası indirilir/dinlenir. HTTP POST
    metodu ile api.bulutsantralim.com adresine parametreler gönderilir. İstek başarılı olduğunda HTTP
    200 Status kodu ile mesajın Body'sinde ses kaydına ait olan bir URL döner. İstek başarısız olduğunda
    ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. URL yaşam süresi 1 saattir.

    Args:
        uuid (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        uuid=uuid,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    uuid: str,

) -> str | None:
    """ Telesekreter Ses Kaydı için Geçici URL Oluşturma

     CDR'ın ses kaydına erişimde olduğu gibi, bu ses kayıtlarına erişim de iki aşamalıdır. Birinci
    aşamada URL elde edilir. İkinci aşamada ise o URL'den ses dosyası indirilir/dinlenir. HTTP POST
    metodu ile api.bulutsantralim.com adresine parametreler gönderilir. İstek başarılı olduğunda HTTP
    200 Status kodu ile mesajın Body'sinde ses kaydına ait olan bir URL döner. İstek başarısız olduğunda
    ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. URL yaşam süresi 1 saattir.

    Args:
        uuid (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
uuid=uuid,

    )).parsed
