from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.get_queue_user_list_response_200_item import GetQueueUserListResponse200Item
from typing import cast



def _get_kwargs(
    *,
    queue_number: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["queue_number"] = queue_number


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/queue/user_list",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | list[GetQueueUserListResponse200Item] | None:
    if response.status_code == 200:
        response_200 = []
        _response_200 = response.json()
        for response_200_item_data in (_response_200):
            response_200_item = GetQueueUserListResponse200Item.from_dict(response_200_item_data)



            response_200.append(response_200_item)

        return response_200

    if response.status_code == 401:
        response_401 = cast(Any, None)
        return response_401

    if response.status_code == 404:
        response_404 = cast(Any, None)
        return response_404

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | list[GetQueueUserListResponse200Item]]:
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

) -> Response[Any | list[GetQueueUserListResponse200Item]]:
    """ Kuyruktaki Dahili Listesine Erişim

     Santralinizdeki kuyruğun dahili sırasını listeler. Bunun için HTTP GET metodu ile
    api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde dahili listesi döner. İstek başarısız olduğunda ise ilgili HTTP
    Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        queue_number (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | list[GetQueueUserListResponse200Item]]
     """


    kwargs = _get_kwargs(
        queue_number=queue_number,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    queue_number: str,

) -> Any | list[GetQueueUserListResponse200Item] | None:
    """ Kuyruktaki Dahili Listesine Erişim

     Santralinizdeki kuyruğun dahili sırasını listeler. Bunun için HTTP GET metodu ile
    api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde dahili listesi döner. İstek başarısız olduğunda ise ilgili HTTP
    Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        queue_number (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | list[GetQueueUserListResponse200Item]
     """


    return sync_detailed(
        client=client,
queue_number=queue_number,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    queue_number: str,

) -> Response[Any | list[GetQueueUserListResponse200Item]]:
    """ Kuyruktaki Dahili Listesine Erişim

     Santralinizdeki kuyruğun dahili sırasını listeler. Bunun için HTTP GET metodu ile
    api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde dahili listesi döner. İstek başarısız olduğunda ise ilgili HTTP
    Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        queue_number (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | list[GetQueueUserListResponse200Item]]
     """


    kwargs = _get_kwargs(
        queue_number=queue_number,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    queue_number: str,

) -> Any | list[GetQueueUserListResponse200Item] | None:
    """ Kuyruktaki Dahili Listesine Erişim

     Santralinizdeki kuyruğun dahili sırasını listeler. Bunun için HTTP GET metodu ile
    api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde dahili listesi döner. İstek başarısız olduğunda ise ilgili HTTP
    Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        queue_number (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | list[GetQueueUserListResponse200Item]
     """


    return (await asyncio_detailed(
        client=client,
queue_number=queue_number,

    )).parsed
