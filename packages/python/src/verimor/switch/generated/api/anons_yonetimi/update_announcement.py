from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.update_announcement_body import UpdateAnnouncementBody
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    id: str,
    *,
    body: UpdateAnnouncementBody | Unset = UNSET,

) -> dict[str, Any]:
    headers: dict[str, Any] = {}


    

    

    _kwargs: dict[str, Any] = {
        "method": "patch",
        "url": "/announcements/{id}".format(id=quote(str(id), safe=""),),
    }

    if not isinstance(body, Unset):
        _kwargs["data"] = body.to_dict()
    headers["Content-Type"] = "application/x-www-form-urlencoded"

    _kwargs["headers"] = headers
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
    id: str,
    *,
    client: AuthenticatedClient,
    body: UpdateAnnouncementBody | Unset = UNSET,

) -> Response[str]:
    """ Ses Dosyası Güncelleme

     Mevcut ses dosyasının adını ve içeriğini güncellemek için kullanılır. Ses dosyasının ismini ve
    içeriğinin base64 ile kodlanmış halini PATCH etmeniz yeterlidir. Başarılı durumda OK döner.

    Args:
        id (str):
        body (UpdateAnnouncementBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
body=body,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    id: str,
    *,
    client: AuthenticatedClient,
    body: UpdateAnnouncementBody | Unset = UNSET,

) -> str | None:
    """ Ses Dosyası Güncelleme

     Mevcut ses dosyasının adını ve içeriğini güncellemek için kullanılır. Ses dosyasının ismini ve
    içeriğinin base64 ile kodlanmış halini PATCH etmeniz yeterlidir. Başarılı durumda OK döner.

    Args:
        id (str):
        body (UpdateAnnouncementBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        id=id,
client=client,
body=body,

    ).parsed

async def asyncio_detailed(
    id: str,
    *,
    client: AuthenticatedClient,
    body: UpdateAnnouncementBody | Unset = UNSET,

) -> Response[str]:
    """ Ses Dosyası Güncelleme

     Mevcut ses dosyasının adını ve içeriğini güncellemek için kullanılır. Ses dosyasının ismini ve
    içeriğinin base64 ile kodlanmış halini PATCH etmeniz yeterlidir. Başarılı durumda OK döner.

    Args:
        id (str):
        body (UpdateAnnouncementBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
body=body,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    id: str,
    *,
    client: AuthenticatedClient,
    body: UpdateAnnouncementBody | Unset = UNSET,

) -> str | None:
    """ Ses Dosyası Güncelleme

     Mevcut ses dosyasının adını ve içeriğini güncellemek için kullanılır. Ses dosyasının ismini ve
    içeriğinin base64 ile kodlanmış halini PATCH etmeniz yeterlidir. Başarılı durumda OK döner.

    Args:
        id (str):
        body (UpdateAnnouncementBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        id=id,
client=client,
body=body,

    )).parsed
