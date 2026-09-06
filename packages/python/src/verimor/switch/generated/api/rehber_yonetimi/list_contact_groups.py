from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.list_contact_groups_response_200_item import ListContactGroupsResponse200Item
from typing import cast



def _get_kwargs(
    
) -> dict[str, Any]:
    

    

    

    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/contact_groups",
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | list[ListContactGroupsResponse200Item] | None:
    if response.status_code == 200:
        response_200 = []
        _response_200 = response.json()
        for response_200_item_data in (_response_200):
            response_200_item = ListContactGroupsResponse200Item.from_dict(response_200_item_data)



            response_200.append(response_200_item)

        return response_200

    if response.status_code == 401:
        response_401 = cast(Any, None)
        return response_401

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | list[ListContactGroupsResponse200Item]]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient,

) -> Response[Any | list[ListContactGroupsResponse200Item]]:
    """ Grup Listesine Erişim

     Santralinizdeki kişi gruplarının listesine erişmek için kullanılır. HTTP GET metodu ile
    api.bulutsantralim.com/contact_groups adresi çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu
    ile mesajın Body'sinde gruplar listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu
    ile mesajın Body'sinde hata mesajı döner.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | list[ListContactGroupsResponse200Item]]
     """


    kwargs = _get_kwargs(
        
    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,

) -> Any | list[ListContactGroupsResponse200Item] | None:
    """ Grup Listesine Erişim

     Santralinizdeki kişi gruplarının listesine erişmek için kullanılır. HTTP GET metodu ile
    api.bulutsantralim.com/contact_groups adresi çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu
    ile mesajın Body'sinde gruplar listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu
    ile mesajın Body'sinde hata mesajı döner.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | list[ListContactGroupsResponse200Item]
     """


    return sync_detailed(
        client=client,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,

) -> Response[Any | list[ListContactGroupsResponse200Item]]:
    """ Grup Listesine Erişim

     Santralinizdeki kişi gruplarının listesine erişmek için kullanılır. HTTP GET metodu ile
    api.bulutsantralim.com/contact_groups adresi çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu
    ile mesajın Body'sinde gruplar listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu
    ile mesajın Body'sinde hata mesajı döner.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | list[ListContactGroupsResponse200Item]]
     """


    kwargs = _get_kwargs(
        
    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,

) -> Any | list[ListContactGroupsResponse200Item] | None:
    """ Grup Listesine Erişim

     Santralinizdeki kişi gruplarının listesine erişmek için kullanılır. HTTP GET metodu ile
    api.bulutsantralim.com/contact_groups adresi çağrılır. İstek başarılı olduğunda HTTP 200 Status kodu
    ile mesajın Body'sinde gruplar listesi döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu
    ile mesajın Body'sinde hata mesajı döner.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | list[ListContactGroupsResponse200Item]
     """


    return (await asyncio_detailed(
        client=client,

    )).parsed
