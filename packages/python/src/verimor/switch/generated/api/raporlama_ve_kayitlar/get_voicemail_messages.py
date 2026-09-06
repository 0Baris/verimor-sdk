from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.get_voicemail_messages_response_200 import GetVoicemailMessagesResponse200
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    read: str | Unset = UNSET,
    user_number: str | Unset = UNSET,
    uuid: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["start_stamp_from"] = start_stamp_from

    params["start_stamp_to"] = start_stamp_to

    params["read"] = read

    params["user_number"] = user_number

    params["uuid"] = uuid

    params["page"] = page

    params["limit"] = limit


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/voicemail_messages",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | GetVoicemailMessagesResponse200 | None:
    if response.status_code == 200:
        response_200 = GetVoicemailMessagesResponse200.from_dict(response.json())



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


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | GetVoicemailMessagesResponse200]:
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
    read: str | Unset = UNSET,
    user_number: str | Unset = UNSET,
    uuid: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | GetVoicemailMessagesResponse200]:
    """ Telesekreter Arama Kayıtlarına Erişim

     Santralinizdeki telesekreter arama kayıtlarına ve ses kayıtlarına erişmek için kullanılır. HTTP GET
    metodu ile api.bulutsantralim.com adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status
    kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        read (str | Unset):
        user_number (str | Unset):
        uuid (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | GetVoicemailMessagesResponse200]
     """


    kwargs = _get_kwargs(
        start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
read=read,
user_number=user_number,
uuid=uuid,
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
    read: str | Unset = UNSET,
    user_number: str | Unset = UNSET,
    uuid: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | GetVoicemailMessagesResponse200 | None:
    """ Telesekreter Arama Kayıtlarına Erişim

     Santralinizdeki telesekreter arama kayıtlarına ve ses kayıtlarına erişmek için kullanılır. HTTP GET
    metodu ile api.bulutsantralim.com adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status
    kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        read (str | Unset):
        user_number (str | Unset):
        uuid (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | GetVoicemailMessagesResponse200
     """


    return sync_detailed(
        client=client,
start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
read=read,
user_number=user_number,
uuid=uuid,
page=page,
limit=limit,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    start_stamp_from: str | Unset = UNSET,
    start_stamp_to: str | Unset = UNSET,
    read: str | Unset = UNSET,
    user_number: str | Unset = UNSET,
    uuid: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Response[Any | GetVoicemailMessagesResponse200]:
    """ Telesekreter Arama Kayıtlarına Erişim

     Santralinizdeki telesekreter arama kayıtlarına ve ses kayıtlarına erişmek için kullanılır. HTTP GET
    metodu ile api.bulutsantralim.com adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status
    kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        read (str | Unset):
        user_number (str | Unset):
        uuid (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | GetVoicemailMessagesResponse200]
     """


    kwargs = _get_kwargs(
        start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
read=read,
user_number=user_number,
uuid=uuid,
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
    read: str | Unset = UNSET,
    user_number: str | Unset = UNSET,
    uuid: str | Unset = UNSET,
    page: int | Unset = UNSET,
    limit: int | Unset = UNSET,

) -> Any | GetVoicemailMessagesResponse200 | None:
    """ Telesekreter Arama Kayıtlarına Erişim

     Santralinizdeki telesekreter arama kayıtlarına ve ses kayıtlarına erişmek için kullanılır. HTTP GET
    metodu ile api.bulutsantralim.com adresi parametrelerle çağrılır. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde mesajlar döner. İstek başarısız olduğunda ise ilgili HTTP Status
    kodu ile mesajın Body'sinde hata mesajı döner.

    Args:
        start_stamp_from (str | Unset):
        start_stamp_to (str | Unset):
        read (str | Unset):
        user_number (str | Unset):
        uuid (str | Unset):
        page (int | Unset):
        limit (int | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | GetVoicemailMessagesResponse200
     """


    return (await asyncio_detailed(
        client=client,
start_stamp_from=start_stamp_from,
start_stamp_to=start_stamp_to,
read=read,
user_number=user_number,
uuid=uuid,
page=page,
limit=limit,

    )).parsed
