from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.get_cdrs_response_200 import GetCdrsResponse200
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    recording_present: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    destination_number: str | Unset = UNSET,
    missed: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["start_stamp_from"] = start_stamp_from

    params["start_stamp_to"] = start_stamp_to

    params["recording_present"] = recording_present

    params["direction"] = direction

    params["caller_id_number"] = caller_id_number

    params["destination_number"] = destination_number

    params["missed"] = missed

    params["queue"] = queue

    params["page"] = page

    params["limit"] = limit


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/cdrs",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | GetCdrsResponse200 | None:
    if response.status_code == 200:
        response_200 = GetCdrsResponse200.from_dict(response.json())



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


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | GetCdrsResponse200]:
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
    recording_present: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    destination_number: str | Unset = UNSET,
    missed: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | GetCdrsResponse200]:
    """ Çağrı Detay Kayıtları (CDR) Listesi

     Farklı filtrelerle ve sayfalama ile çağrı detay kayıtlarını (CDR) listeler. Bu endpoint dakikada en
    fazla 6 istek ile sınırlıdır.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        recording_present (str | Unset):
        direction (str | Unset):
        caller_id_number (str | Unset):
        destination_number (str | Unset):
        missed (str | Unset):
        queue (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | GetCdrsResponse200]
     """


    kwargs = _get_kwargs(
        start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
recording_present=recording_present,
direction=direction,
caller_id_number=caller_id_number,
destination_number=destination_number,
missed=missed,
queue=queue,
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
    recording_present: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    destination_number: str | Unset = UNSET,
    missed: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | GetCdrsResponse200 | None:
    """ Çağrı Detay Kayıtları (CDR) Listesi

     Farklı filtrelerle ve sayfalama ile çağrı detay kayıtlarını (CDR) listeler. Bu endpoint dakikada en
    fazla 6 istek ile sınırlıdır.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        recording_present (str | Unset):
        direction (str | Unset):
        caller_id_number (str | Unset):
        destination_number (str | Unset):
        missed (str | Unset):
        queue (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | GetCdrsResponse200
     """


    return sync_detailed(
        client=client,
start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
recording_present=recording_present,
direction=direction,
caller_id_number=caller_id_number,
destination_number=destination_number,
missed=missed,
queue=queue,
page=page,
limit=limit,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    recording_present: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    destination_number: str | Unset = UNSET,
    missed: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | GetCdrsResponse200]:
    """ Çağrı Detay Kayıtları (CDR) Listesi

     Farklı filtrelerle ve sayfalama ile çağrı detay kayıtlarını (CDR) listeler. Bu endpoint dakikada en
    fazla 6 istek ile sınırlıdır.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        recording_present (str | Unset):
        direction (str | Unset):
        caller_id_number (str | Unset):
        destination_number (str | Unset):
        missed (str | Unset):
        queue (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | GetCdrsResponse200]
     """


    kwargs = _get_kwargs(
        start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
recording_present=recording_present,
direction=direction,
caller_id_number=caller_id_number,
destination_number=destination_number,
missed=missed,
queue=queue,
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
    recording_present: str | Unset = UNSET,
    direction: str | Unset = UNSET,
    caller_id_number: str | Unset = UNSET,
    destination_number: str | Unset = UNSET,
    missed: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | GetCdrsResponse200 | None:
    """ Çağrı Detay Kayıtları (CDR) Listesi

     Farklı filtrelerle ve sayfalama ile çağrı detay kayıtlarını (CDR) listeler. Bu endpoint dakikada en
    fazla 6 istek ile sınırlıdır.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        recording_present (str | Unset):
        direction (str | Unset):
        caller_id_number (str | Unset):
        destination_number (str | Unset):
        missed (str | Unset):
        queue (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | GetCdrsResponse200
     """


    return (await asyncio_detailed(
        client=client,
start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
recording_present=recording_present,
direction=direction,
caller_id_number=caller_id_number,
destination_number=destination_number,
missed=missed,
queue=queue,
page=page,
limit=limit,

    )).parsed
