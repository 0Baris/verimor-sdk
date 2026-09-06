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
    extension: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    manual_answer: bool | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    custom_call_type: str | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["extension"] = extension

    params["destination"] = destination

    params["caller_id"] = caller_id

    params["manual_answer"] = manual_answer

    params["timeout"] = timeout

    params["announcement_to_callee"] = announcement_to_callee

    params["announcement_to_caller"] = announcement_to_caller

    params["custom_call_type"] = custom_call_type


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/originate",
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
    extension: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    manual_answer: bool | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    custom_call_type: str | Unset = UNSET,

) -> Response[str]:
    """ Çağrı Başlatma (GET)

     Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP
    GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

    HAZIRLIK:
    Online İşlem Merkezi => Bulut Santralim => Santral Ayarlarım menüsü altından API Anahtarınızı (key)
    öğrenmelisiniz.

    Args:
        extension (str):
        destination (str):
        caller_id (str | Unset):
        manual_answer (bool | Unset):
        timeout (int | Unset):
        announcement_to_callee (int | Unset):
        announcement_to_caller (int | Unset):
        custom_call_type (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        extension=extension,
destination=destination,
caller_id=caller_id,
manual_answer=manual_answer,
timeout=timeout,
announcement_to_callee=announcement_to_callee,
announcement_to_caller=announcement_to_caller,
custom_call_type=custom_call_type,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    extension: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    manual_answer: bool | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    custom_call_type: str | Unset = UNSET,

) -> str | None:
    """ Çağrı Başlatma (GET)

     Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP
    GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

    HAZIRLIK:
    Online İşlem Merkezi => Bulut Santralim => Santral Ayarlarım menüsü altından API Anahtarınızı (key)
    öğrenmelisiniz.

    Args:
        extension (str):
        destination (str):
        caller_id (str | Unset):
        manual_answer (bool | Unset):
        timeout (int | Unset):
        announcement_to_callee (int | Unset):
        announcement_to_caller (int | Unset):
        custom_call_type (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
extension=extension,
destination=destination,
caller_id=caller_id,
manual_answer=manual_answer,
timeout=timeout,
announcement_to_callee=announcement_to_callee,
announcement_to_caller=announcement_to_caller,
custom_call_type=custom_call_type,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    extension: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    manual_answer: bool | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    custom_call_type: str | Unset = UNSET,

) -> Response[str]:
    """ Çağrı Başlatma (GET)

     Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP
    GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

    HAZIRLIK:
    Online İşlem Merkezi => Bulut Santralim => Santral Ayarlarım menüsü altından API Anahtarınızı (key)
    öğrenmelisiniz.

    Args:
        extension (str):
        destination (str):
        caller_id (str | Unset):
        manual_answer (bool | Unset):
        timeout (int | Unset):
        announcement_to_callee (int | Unset):
        announcement_to_caller (int | Unset):
        custom_call_type (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        extension=extension,
destination=destination,
caller_id=caller_id,
manual_answer=manual_answer,
timeout=timeout,
announcement_to_callee=announcement_to_callee,
announcement_to_caller=announcement_to_caller,
custom_call_type=custom_call_type,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    extension: str,
    destination: str,
    caller_id: str | Unset = UNSET,
    manual_answer: bool | Unset = UNSET,
    timeout: int | Unset = UNSET,
    announcement_to_callee: int | Unset = UNSET,
    announcement_to_caller: int | Unset = UNSET,
    custom_call_type: str | Unset = UNSET,

) -> str | None:
    """ Çağrı Başlatma (GET)

     Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP
    GET metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Bu endpoint saniyede 3 istek (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

    HAZIRLIK:
    Online İşlem Merkezi => Bulut Santralim => Santral Ayarlarım menüsü altından API Anahtarınızı (key)
    öğrenmelisiniz.

    Args:
        extension (str):
        destination (str):
        caller_id (str | Unset):
        manual_answer (bool | Unset):
        timeout (int | Unset):
        announcement_to_callee (int | Unset):
        announcement_to_caller (int | Unset):
        custom_call_type (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
extension=extension,
destination=destination,
caller_id=caller_id,
manual_answer=manual_answer,
timeout=timeout,
announcement_to_callee=announcement_to_callee,
announcement_to_caller=announcement_to_caller,
custom_call_type=custom_call_type,

    )).parsed
