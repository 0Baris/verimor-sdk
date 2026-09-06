from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.post_v2_cancel_id_body import PostV2CancelIdBody
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    id: str,
    *,
    body: PostV2CancelIdBody | Unset = UNSET,

) -> dict[str, Any]:
    headers: dict[str, Any] = {}


    

    

    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/v2/cancel/{id}".format(id=quote(str(id), safe=""),),
    }

    
    if not isinstance(body, Unset):
        _kwargs["json"] = body.to_dict()

    headers["Content-Type"] = "application/json"

    _kwargs["headers"] = headers
    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | str | None:
    if response.status_code == 200:
        response_200 = response.text
        return response_200

    if response.status_code == 400:
        response_400 = cast(Any, None)
        return response_400

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
    id: str,
    *,
    client: AuthenticatedClient | Client,
    body: PostV2CancelIdBody | Unset = UNSET,

) -> Response[Any | str]:
    """ Gönderim İptali

     <p>İleri tarihli mesaj gönderimini iptal etmek için örnekte olduğu gibi bir JSON string POST
    edilir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu
    paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        id (str):
        body (PostV2CancelIdBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | str]
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
    client: AuthenticatedClient | Client,
    body: PostV2CancelIdBody | Unset = UNSET,

) -> Any | str | None:
    """ Gönderim İptali

     <p>İleri tarihli mesaj gönderimini iptal etmek için örnekte olduğu gibi bir JSON string POST
    edilir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu
    paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        id (str):
        body (PostV2CancelIdBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | str
     """


    return sync_detailed(
        id=id,
client=client,
body=body,

    ).parsed

async def asyncio_detailed(
    id: str,
    *,
    client: AuthenticatedClient | Client,
    body: PostV2CancelIdBody | Unset = UNSET,

) -> Response[Any | str]:
    """ Gönderim İptali

     <p>İleri tarihli mesaj gönderimini iptal etmek için örnekte olduğu gibi bir JSON string POST
    edilir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu
    paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        id (str):
        body (PostV2CancelIdBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | str]
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
    client: AuthenticatedClient | Client,
    body: PostV2CancelIdBody | Unset = UNSET,

) -> Any | str | None:
    """ Gönderim İptali

     <p>İleri tarihli mesaj gönderimini iptal etmek için örnekte olduğu gibi bir JSON string POST
    edilir.</p><p>Bu endpoint /v2/status, /v2/balance gibi endpoint'lerle aynı hız sınırı havuzunu
    paylaşır — dakikada toplam 20 istek gönderebilirsiniz (burst 10).</p>

    Args:
        id (str):
        body (PostV2CancelIdBody | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | str
     """


    return (await asyncio_detailed(
        id=id,
client=client,
body=body,

    )).parsed
