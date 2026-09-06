from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...types import UNSET, Unset



def _get_kwargs(
    *,
    source: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    recording_enabled: bool | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["source"] = source

    params["destination"] = destination

    params["caller_id"] = caller_id

    params["timeout"] = timeout

    params["announcement_to_caller"] = announcement_to_caller

    params["announcement_to_callee"] = announcement_to_callee

    params["recording_enabled"] = recording_enabled


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/bridge",
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
    source: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    recording_enabled: bool | Unset = UNSET,

) -> Response[str]:
    """ Çağrı Bağlama

     Uygulamalarınız üzerinden iki dış numarayı (örn. cep telefonu) arayıp birbiriyle görüştürmek için
    kullanılır. Kullanım alanları: Müşteriniz ve saha personelinizi görüştürmek istiyorsunuz fakat bilgi
    güvenliği (örn. KVKK) nedeniyle cep telefonu numaralarının görünmesini istemiyorsunuz (numara
    maskeleme/gizleme). Müşteriniz ve saha personelinizin yaptığı görüşmeleri raporlamak ve ses
    kayıtlarını tutmak istiyorsunuz. Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine
    tabidir, burst değeri 100'dür.

    Args:
        source (str):
        destination (str):
        caller_id (str | Unset):
        timeout (int | Unset):
        announcement_to_caller (int | Unset):
        announcement_to_callee (int | Unset):
        recording_enabled (bool | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        source=source,
destination=destination,
caller_id=caller_id,
timeout=timeout,
announcement_to_caller=announcement_to_caller,
announcement_to_callee=announcement_to_callee,
recording_enabled=recording_enabled,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    source: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    recording_enabled: bool | Unset = UNSET,

) -> str | None:
    """ Çağrı Bağlama

     Uygulamalarınız üzerinden iki dış numarayı (örn. cep telefonu) arayıp birbiriyle görüştürmek için
    kullanılır. Kullanım alanları: Müşteriniz ve saha personelinizi görüştürmek istiyorsunuz fakat bilgi
    güvenliği (örn. KVKK) nedeniyle cep telefonu numaralarının görünmesini istemiyorsunuz (numara
    maskeleme/gizleme). Müşteriniz ve saha personelinizin yaptığı görüşmeleri raporlamak ve ses
    kayıtlarını tutmak istiyorsunuz. Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine
    tabidir, burst değeri 100'dür.

    Args:
        source (str):
        destination (str):
        caller_id (str | Unset):
        timeout (int | Unset):
        announcement_to_caller (int | Unset):
        announcement_to_callee (int | Unset):
        recording_enabled (bool | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
source=source,
destination=destination,
caller_id=caller_id,
timeout=timeout,
announcement_to_caller=announcement_to_caller,
announcement_to_callee=announcement_to_callee,
recording_enabled=recording_enabled,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    source: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    recording_enabled: bool | Unset = UNSET,

) -> Response[str]:
    """ Çağrı Bağlama

     Uygulamalarınız üzerinden iki dış numarayı (örn. cep telefonu) arayıp birbiriyle görüştürmek için
    kullanılır. Kullanım alanları: Müşteriniz ve saha personelinizi görüştürmek istiyorsunuz fakat bilgi
    güvenliği (örn. KVKK) nedeniyle cep telefonu numaralarının görünmesini istemiyorsunuz (numara
    maskeleme/gizleme). Müşteriniz ve saha personelinizin yaptığı görüşmeleri raporlamak ve ses
    kayıtlarını tutmak istiyorsunuz. Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine
    tabidir, burst değeri 100'dür.

    Args:
        source (str):
        destination (str):
        caller_id (str | Unset):
        timeout (int | Unset):
        announcement_to_caller (int | Unset):
        announcement_to_callee (int | Unset):
        recording_enabled (bool | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        source=source,
destination=destination,
caller_id=caller_id,
timeout=timeout,
announcement_to_caller=announcement_to_caller,
announcement_to_callee=announcement_to_callee,
recording_enabled=recording_enabled,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    source: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    recording_enabled: bool | Unset = UNSET,

) -> str | None:
    """ Çağrı Bağlama

     Uygulamalarınız üzerinden iki dış numarayı (örn. cep telefonu) arayıp birbiriyle görüştürmek için
    kullanılır. Kullanım alanları: Müşteriniz ve saha personelinizi görüştürmek istiyorsunuz fakat bilgi
    güvenliği (örn. KVKK) nedeniyle cep telefonu numaralarının görünmesini istemiyorsunuz (numara
    maskeleme/gizleme). Müşteriniz ve saha personelinizin yaptığı görüşmeleri raporlamak ve ses
    kayıtlarını tutmak istiyorsunuz. Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine
    tabidir, burst değeri 100'dür.

    Args:
        source (str):
        destination (str):
        caller_id (str | Unset):
        timeout (int | Unset):
        announcement_to_caller (int | Unset):
        announcement_to_callee (int | Unset):
        recording_enabled (bool | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
source=source,
destination=destination,
caller_id=caller_id,
timeout=timeout,
announcement_to_caller=announcement_to_caller,
announcement_to_callee=announcement_to_callee,
recording_enabled=recording_enabled,

    )).parsed
