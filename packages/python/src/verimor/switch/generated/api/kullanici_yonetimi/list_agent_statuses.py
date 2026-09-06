from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.list_agent_statuses_response_200_item import ListAgentStatusesResponse200Item
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    agent: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    status: str | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["agent"] = agent

    params["queue"] = queue

    params["status"] = status


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/agent_statuses",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | list[ListAgentStatusesResponse200Item] | None:
    if response.status_code == 200:
        response_200 = []
        _response_200 = response.json()
        for response_200_item_data in (_response_200):
            response_200_item = ListAgentStatusesResponse200Item.from_dict(response_200_item_data)



            response_200.append(response_200_item)

        return response_200

    if response.status_code == 400:
        response_400 = cast(Any, None)
        return response_400

    if response.status_code == 401:
        response_401 = cast(Any, None)
        return response_401

    if response.status_code == 429:
        response_429 = cast(Any, None)
        return response_429

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | list[ListAgentStatusesResponse200Item]]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient,
    agent: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    status: str | Unset = UNSET,

) -> Response[Any | list[ListAgentStatusesResponse200Item]]:
    """ MT Durumlarını ve Üyeliklerini Listeleme

     Müşteri Temsilcilerinizin durumunu ve hangi kuyruklara üye olduklarını listelemek için kullanılır.
    HTTP GET metodu ile api.bulutsantralim.com/agent_statuses adresi parametrelerle çağrılır. İstek
    başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız
    olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint,
    /user_statuses ile aynı hız sınırı havuzunu paylaşır - aynı domain/IP için ikisi birlikte dakikada
    toplam 2 istek gönderebilirsiniz.

    Args:
        agent (str | Unset):
        queue (str | Unset):
        status (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | list[ListAgentStatusesResponse200Item]]
     """


    kwargs = _get_kwargs(
        agent=agent,
queue=queue,
status=status,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    agent: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    status: str | Unset = UNSET,

) -> Any | list[ListAgentStatusesResponse200Item] | None:
    """ MT Durumlarını ve Üyeliklerini Listeleme

     Müşteri Temsilcilerinizin durumunu ve hangi kuyruklara üye olduklarını listelemek için kullanılır.
    HTTP GET metodu ile api.bulutsantralim.com/agent_statuses adresi parametrelerle çağrılır. İstek
    başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız
    olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint,
    /user_statuses ile aynı hız sınırı havuzunu paylaşır - aynı domain/IP için ikisi birlikte dakikada
    toplam 2 istek gönderebilirsiniz.

    Args:
        agent (str | Unset):
        queue (str | Unset):
        status (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | list[ListAgentStatusesResponse200Item]
     """


    return sync_detailed(
        client=client,
agent=agent,
queue=queue,
status=status,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    agent: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    status: str | Unset = UNSET,

) -> Response[Any | list[ListAgentStatusesResponse200Item]]:
    """ MT Durumlarını ve Üyeliklerini Listeleme

     Müşteri Temsilcilerinizin durumunu ve hangi kuyruklara üye olduklarını listelemek için kullanılır.
    HTTP GET metodu ile api.bulutsantralim.com/agent_statuses adresi parametrelerle çağrılır. İstek
    başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız
    olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint,
    /user_statuses ile aynı hız sınırı havuzunu paylaşır - aynı domain/IP için ikisi birlikte dakikada
    toplam 2 istek gönderebilirsiniz.

    Args:
        agent (str | Unset):
        queue (str | Unset):
        status (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | list[ListAgentStatusesResponse200Item]]
     """


    kwargs = _get_kwargs(
        agent=agent,
queue=queue,
status=status,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    agent: str | Unset = UNSET,
    queue: str | Unset = UNSET,
    status: str | Unset = UNSET,

) -> Any | list[ListAgentStatusesResponse200Item] | None:
    """ MT Durumlarını ve Üyeliklerini Listeleme

     Müşteri Temsilcilerinizin durumunu ve hangi kuyruklara üye olduklarını listelemek için kullanılır.
    HTTP GET metodu ile api.bulutsantralim.com/agent_statuses adresi parametrelerle çağrılır. İstek
    başarılı olduğunda HTTP 200 Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız
    olduğunda ise ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint,
    /user_statuses ile aynı hız sınırı havuzunu paylaşır - aynı domain/IP için ikisi birlikte dakikada
    toplam 2 istek gönderebilirsiniz.

    Args:
        agent (str | Unset):
        queue (str | Unset):
        status (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | list[ListAgentStatusesResponse200Item]
     """


    return (await asyncio_detailed(
        client=client,
agent=agent,
queue=queue,
status=status,

    )).parsed
