from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...types import File, FileTypes
from io import BytesIO



def _get_kwargs(
    id: str,

) -> dict[str, Any]:
    

    

    

    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/fax_document/{id}".format(id=quote(str(id), safe=""),),
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | File | None:
    if response.status_code == 200:
        response_200 = File(
             payload = BytesIO(response.content)
        )



        return response_200

    if response.status_code == 400:
        response_400 = cast(Any, None)
        return response_400

    if response.status_code == 500:
        response_500 = cast(Any, None)
        return response_500

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | File]:
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

) -> Response[Any | File]:
    """ Faks Belgesi İndirme/Görüntüleme

     Bu servis, daha önce 'Faks Belgesi URL'si İsteme' ile elde edilen geçici URL üzerinden faks
    belgesini indirmenizi veya görüntülemenizi sağlar.

    URL, 1 saat geçerlidir. Herhangi bir kimlik doğrulama gerekmez; güvenlik, URL'nin kendisinde bulunan
    tek kullanımlık ticket kodu ile sağlanır.

    Başarılı isteklerde HTTP 200 ile belge dosyası (PDF/TIFF) döner. Hatalı veya süresi dolmuş ticket
    ile yapılan isteklerde uygun hata mesajı ve HTTP 400 döner.

    Args:
        id (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | File]
     """


    kwargs = _get_kwargs(
        id=id,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    id: str,
    *,
    client: AuthenticatedClient | Client,

) -> Any | File | None:
    """ Faks Belgesi İndirme/Görüntüleme

     Bu servis, daha önce 'Faks Belgesi URL'si İsteme' ile elde edilen geçici URL üzerinden faks
    belgesini indirmenizi veya görüntülemenizi sağlar.

    URL, 1 saat geçerlidir. Herhangi bir kimlik doğrulama gerekmez; güvenlik, URL'nin kendisinde bulunan
    tek kullanımlık ticket kodu ile sağlanır.

    Başarılı isteklerde HTTP 200 ile belge dosyası (PDF/TIFF) döner. Hatalı veya süresi dolmuş ticket
    ile yapılan isteklerde uygun hata mesajı ve HTTP 400 döner.

    Args:
        id (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | File
     """


    return sync_detailed(
        id=id,
client=client,

    ).parsed

async def asyncio_detailed(
    id: str,
    *,
    client: AuthenticatedClient | Client,

) -> Response[Any | File]:
    """ Faks Belgesi İndirme/Görüntüleme

     Bu servis, daha önce 'Faks Belgesi URL'si İsteme' ile elde edilen geçici URL üzerinden faks
    belgesini indirmenizi veya görüntülemenizi sağlar.

    URL, 1 saat geçerlidir. Herhangi bir kimlik doğrulama gerekmez; güvenlik, URL'nin kendisinde bulunan
    tek kullanımlık ticket kodu ile sağlanır.

    Başarılı isteklerde HTTP 200 ile belge dosyası (PDF/TIFF) döner. Hatalı veya süresi dolmuş ticket
    ile yapılan isteklerde uygun hata mesajı ve HTTP 400 döner.

    Args:
        id (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | File]
     """


    kwargs = _get_kwargs(
        id=id,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    id: str,
    *,
    client: AuthenticatedClient | Client,

) -> Any | File | None:
    """ Faks Belgesi İndirme/Görüntüleme

     Bu servis, daha önce 'Faks Belgesi URL'si İsteme' ile elde edilen geçici URL üzerinden faks
    belgesini indirmenizi veya görüntülemenizi sağlar.

    URL, 1 saat geçerlidir. Herhangi bir kimlik doğrulama gerekmez; güvenlik, URL'nin kendisinde bulunan
    tek kullanımlık ticket kodu ile sağlanır.

    Başarılı isteklerde HTTP 200 ile belge dosyası (PDF/TIFF) döner. Hatalı veya süresi dolmuş ticket
    ile yapılan isteklerde uygun hata mesajı ve HTTP 400 döner.

    Args:
        id (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | File
     """


    return (await asyncio_detailed(
        id=id,
client=client,

    )).parsed
