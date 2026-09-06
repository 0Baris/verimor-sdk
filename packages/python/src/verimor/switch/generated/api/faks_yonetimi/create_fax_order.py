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
    local_station_id: str | Unset = UNSET,
    local_station_header: str | Unset = UNSET,
    remote_station_id: str,
    filedata: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["local_station_id"] = local_station_id

    params["local_station_header"] = local_station_header

    params["remote_station_id"] = remote_station_id

    params["filedata"] = filedata


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/fax_orders",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | str | None:
    if response.status_code == 200:
        response_200 = response.text
        return response_200

    if response.status_code == 400:
        response_400 = cast(Any, None)
        return response_400

    if response.status_code == 401:
        response_401 = cast(Any, None)
        return response_401

    if response.status_code == 414:
        response_414 = cast(Any, None)
        return response_414

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | str]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient,
    local_station_id: str | Unset = UNSET,
    local_station_header: str | Unset = UNSET,
    remote_station_id: str,
    filedata: str,

) -> Response[Any | str]:
    """ Faks Gönderimi

     Faks göndermek için dosyasının içeriğinin base64 ile kodlanmış halini ve diğer bilgileri POST
    etmeniz yeterlidir. Uygulamalarınız üzerinden faks göndermek için api.bulutsantralim.com/fax_orders
    adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 status kodu ile mesajın Body'sinde
    faks ID döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata
    mesajı döner.

    Args:
        local_station_id (str | Unset):
        local_station_header (str | Unset):
        remote_station_id (str):
        filedata (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | str]
     """


    kwargs = _get_kwargs(
        local_station_id=local_station_id,
local_station_header=local_station_header,
remote_station_id=remote_station_id,
filedata=filedata,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    local_station_id: str | Unset = UNSET,
    local_station_header: str | Unset = UNSET,
    remote_station_id: str,
    filedata: str,

) -> Any | str | None:
    """ Faks Gönderimi

     Faks göndermek için dosyasının içeriğinin base64 ile kodlanmış halini ve diğer bilgileri POST
    etmeniz yeterlidir. Uygulamalarınız üzerinden faks göndermek için api.bulutsantralim.com/fax_orders
    adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 status kodu ile mesajın Body'sinde
    faks ID döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata
    mesajı döner.

    Args:
        local_station_id (str | Unset):
        local_station_header (str | Unset):
        remote_station_id (str):
        filedata (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | str
     """


    return sync_detailed(
        client=client,
local_station_id=local_station_id,
local_station_header=local_station_header,
remote_station_id=remote_station_id,
filedata=filedata,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    local_station_id: str | Unset = UNSET,
    local_station_header: str | Unset = UNSET,
    remote_station_id: str,
    filedata: str,

) -> Response[Any | str]:
    """ Faks Gönderimi

     Faks göndermek için dosyasının içeriğinin base64 ile kodlanmış halini ve diğer bilgileri POST
    etmeniz yeterlidir. Uygulamalarınız üzerinden faks göndermek için api.bulutsantralim.com/fax_orders
    adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 status kodu ile mesajın Body'sinde
    faks ID döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata
    mesajı döner.

    Args:
        local_station_id (str | Unset):
        local_station_header (str | Unset):
        remote_station_id (str):
        filedata (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | str]
     """


    kwargs = _get_kwargs(
        local_station_id=local_station_id,
local_station_header=local_station_header,
remote_station_id=remote_station_id,
filedata=filedata,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    local_station_id: str | Unset = UNSET,
    local_station_header: str | Unset = UNSET,
    remote_station_id: str,
    filedata: str,

) -> Any | str | None:
    """ Faks Gönderimi

     Faks göndermek için dosyasının içeriğinin base64 ile kodlanmış halini ve diğer bilgileri POST
    etmeniz yeterlidir. Uygulamalarınız üzerinden faks göndermek için api.bulutsantralim.com/fax_orders
    adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 status kodu ile mesajın Body'sinde
    faks ID döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata
    mesajı döner.

    Args:
        local_station_id (str | Unset):
        local_station_header (str | Unset):
        remote_station_id (str):
        filedata (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | str
     """


    return (await asyncio_detailed(
        client=client,
local_station_id=local_station_id,
local_station_header=local_station_header,
remote_station_id=remote_station_id,
filedata=filedata,

    )).parsed
