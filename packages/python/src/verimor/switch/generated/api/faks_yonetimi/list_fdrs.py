from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.list_fdrs_response_200 import ListFdrsResponse200
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    original_destination: str | Unset = UNSET,
    success: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["start_stamp_from"] = start_stamp_from

    params["start_stamp_to"] = start_stamp_to

    params["direction"] = direction

    params["caller_id_number"] = caller_id_number

    params["original_destination"] = original_destination

    params["success"] = success

    params["page"] = page

    params["limit"] = limit


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/fdrs",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | ListFdrsResponse200 | None:
    if response.status_code == 200:
        response_200 = ListFdrsResponse200.from_dict(response.json())



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


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | ListFdrsResponse200]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    original_destination: str | Unset = UNSET,
    success: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | ListFdrsResponse200]:
    """ Faks Listesine Erişim

     Santralinizdeki faks detay kayıtlarının listesine erişmek için kullanılır. HTTP GET metodu ile
    api.bulutsantralim.com/fdrs adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status
    kodu ile mesajın Body'sinde faks kayıtları döner. İstek başarısız olduğunda ise ilgili HTTP Status
    kodu ile mesajın Body'sinde hata mesajı döner. Tarih aralığı 31 günden uzun olamaz.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        direction (str | Unset):
        caller_id_number (str | Unset):
        original_destination (str | Unset):
        success (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | ListFdrsResponse200]
     """


    kwargs = _get_kwargs(
        start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
direction=direction,
caller_id_number=caller_id_number,
original_destination=original_destination,
success=success,
page=page,
limit=limit,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    original_destination: str | Unset = UNSET,
    success: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | ListFdrsResponse200 | None:
    """ Faks Listesine Erişim

     Santralinizdeki faks detay kayıtlarının listesine erişmek için kullanılır. HTTP GET metodu ile
    api.bulutsantralim.com/fdrs adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status
    kodu ile mesajın Body'sinde faks kayıtları döner. İstek başarısız olduğunda ise ilgili HTTP Status
    kodu ile mesajın Body'sinde hata mesajı döner. Tarih aralığı 31 günden uzun olamaz.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        direction (str | Unset):
        caller_id_number (str | Unset):
        original_destination (str | Unset):
        success (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | ListFdrsResponse200
     """


    return sync_detailed(
        client=client,
start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
direction=direction,
caller_id_number=caller_id_number,
original_destination=original_destination,
success=success,
page=page,
limit=limit,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    original_destination: str | Unset = UNSET,
    success: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | ListFdrsResponse200]:
    """ Faks Listesine Erişim

     Santralinizdeki faks detay kayıtlarının listesine erişmek için kullanılır. HTTP GET metodu ile
    api.bulutsantralim.com/fdrs adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status
    kodu ile mesajın Body'sinde faks kayıtları döner. İstek başarısız olduğunda ise ilgili HTTP Status
    kodu ile mesajın Body'sinde hata mesajı döner. Tarih aralığı 31 günden uzun olamaz.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        direction (str | Unset):
        caller_id_number (str | Unset):
        original_destination (str | Unset):
        success (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | ListFdrsResponse200]
     """


    kwargs = _get_kwargs(
        start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
direction=direction,
caller_id_number=caller_id_number,
original_destination=original_destination,
success=success,
page=page,
limit=limit,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    original_destination: str | Unset = UNSET,
    success: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | ListFdrsResponse200 | None:
    """ Faks Listesine Erişim

     Santralinizdeki faks detay kayıtlarının listesine erişmek için kullanılır. HTTP GET metodu ile
    api.bulutsantralim.com/fdrs adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200 Status
    kodu ile mesajın Body'sinde faks kayıtları döner. İstek başarısız olduğunda ise ilgili HTTP Status
    kodu ile mesajın Body'sinde hata mesajı döner. Tarih aralığı 31 günden uzun olamaz.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        direction (str | Unset):
        caller_id_number (str | Unset):
        original_destination (str | Unset):
        success (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | ListFdrsResponse200
     """


    return (await asyncio_detailed(
        client=client,
start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
direction=direction,
caller_id_number=caller_id_number,
original_destination=original_destination,
success=success,
page=page,
limit=limit,

    )).parsed
