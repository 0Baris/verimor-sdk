from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.delete_blocked_number_direction import DeleteBlockedNumberDirection
from ...types import UNSET, Unset



def _get_kwargs(
    *,
    number: str,
    direction: DeleteBlockedNumberDirection | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["number"] = number

    json_direction: str | Unset = UNSET
    if not isinstance(direction, Unset):
        json_direction = direction.value

    params["direction"] = json_direction


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "delete",
        "url": "/blocked_numbers/delete",
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
    number: str,
    direction: DeleteBlockedNumberDirection | Unset = UNSET,

) -> Response[str]:
    """ Kara Listeden Silme

     Telefon numarasını kara listeden çıkarır. Numara kaldırılmadan önce normalize edilir. DELETE metodu
    ile api.bulutsantralim.com/blocked_numbers/delete adresi parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde başarı mesajı döner. İstek başarısız olduğunda
    ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        number (str):
        direction (DeleteBlockedNumberDirection | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        number=number,
direction=direction,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    number: str,
    direction: DeleteBlockedNumberDirection | Unset = UNSET,

) -> str | None:
    """ Kara Listeden Silme

     Telefon numarasını kara listeden çıkarır. Numara kaldırılmadan önce normalize edilir. DELETE metodu
    ile api.bulutsantralim.com/blocked_numbers/delete adresi parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde başarı mesajı döner. İstek başarısız olduğunda
    ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        number (str):
        direction (DeleteBlockedNumberDirection | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
number=number,
direction=direction,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    number: str,
    direction: DeleteBlockedNumberDirection | Unset = UNSET,

) -> Response[str]:
    """ Kara Listeden Silme

     Telefon numarasını kara listeden çıkarır. Numara kaldırılmadan önce normalize edilir. DELETE metodu
    ile api.bulutsantralim.com/blocked_numbers/delete adresi parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde başarı mesajı döner. İstek başarısız olduğunda
    ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        number (str):
        direction (DeleteBlockedNumberDirection | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        number=number,
direction=direction,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    number: str,
    direction: DeleteBlockedNumberDirection | Unset = UNSET,

) -> str | None:
    """ Kara Listeden Silme

     Telefon numarasını kara listeden çıkarır. Numara kaldırılmadan önce normalize edilir. DELETE metodu
    ile api.bulutsantralim.com/blocked_numbers/delete adresi parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde başarı mesajı döner. İstek başarısız olduğunda
    ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        number (str):
        direction (DeleteBlockedNumberDirection | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
number=number,
direction=direction,

    )).parsed
