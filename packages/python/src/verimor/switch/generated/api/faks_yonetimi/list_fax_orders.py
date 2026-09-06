from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.list_fax_orders_response_200 import ListFaxOrdersResponse200
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["page"] = page

    params["limit"] = limit


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/fax_orders",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | ListFaxOrdersResponse200 | None:
    if response.status_code == 200:
        response_200 = ListFaxOrdersResponse200.from_dict(response.json())



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


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | ListFaxOrdersResponse200]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | ListFaxOrdersResponse200]:
    """ Tamamlanmamış Faks Gönderimlerinin Listesi

     Santraldaki tamamlanmamış faks gönderimlerinin listesine erişmek için kullanılır. HTTP GET metodu
    ile api.bulutsantralim.com/fax_orders adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP
    200 Status kodu ile mesajın Body'sinde faks gönderim kayıtları döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | ListFaxOrdersResponse200]
     """


    kwargs = _get_kwargs(
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
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | ListFaxOrdersResponse200 | None:
    """ Tamamlanmamış Faks Gönderimlerinin Listesi

     Santraldaki tamamlanmamış faks gönderimlerinin listesine erişmek için kullanılır. HTTP GET metodu
    ile api.bulutsantralim.com/fax_orders adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP
    200 Status kodu ile mesajın Body'sinde faks gönderim kayıtları döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | ListFaxOrdersResponse200
     """


    return sync_detailed(
        client=client,
page=page,
limit=limit,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | ListFaxOrdersResponse200]:
    """ Tamamlanmamış Faks Gönderimlerinin Listesi

     Santraldaki tamamlanmamış faks gönderimlerinin listesine erişmek için kullanılır. HTTP GET metodu
    ile api.bulutsantralim.com/fax_orders adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP
    200 Status kodu ile mesajın Body'sinde faks gönderim kayıtları döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | ListFaxOrdersResponse200]
     """


    kwargs = _get_kwargs(
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
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | ListFaxOrdersResponse200 | None:
    """ Tamamlanmamış Faks Gönderimlerinin Listesi

     Santraldaki tamamlanmamış faks gönderimlerinin listesine erişmek için kullanılır. HTTP GET metodu
    ile api.bulutsantralim.com/fax_orders adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP
    200 Status kodu ile mesajın Body'sinde faks gönderim kayıtları döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | ListFaxOrdersResponse200
     """


    return (await asyncio_detailed(
        client=client,
page=page,
limit=limit,

    )).parsed
