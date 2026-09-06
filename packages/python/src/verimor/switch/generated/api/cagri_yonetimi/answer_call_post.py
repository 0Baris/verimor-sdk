from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET, Unset
from ... import errors

from ...models.answer_call_post_data_body import AnswerCallPostDataBody
from ...models.answer_call_post_json_body import AnswerCallPostJsonBody
from typing import cast



def _get_kwargs(
    *,
    body:    AnswerCallPostJsonBody  |     AnswerCallPostDataBody  | Unset = UNSET,

) -> dict[str, Any]:
    headers: dict[str, Any] = {}


    

    

    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/answer",
    }

    if isinstance(body, AnswerCallPostJsonBody):
        _kwargs["json"] = body.to_dict()

        headers["Content-Type"] = "application/json"
    if isinstance(body, AnswerCallPostDataBody):
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
    *,
    client: AuthenticatedClient,
    body:    AnswerCallPostJsonBody  |     AnswerCallPostDataBody  | Unset = UNSET,

) -> Response[str]:
    """ Çağrıyı Cevaplama (POST)

     manual_answer=true parametresi ile başlatılmış bir çağrıyı cevaplamak için HTTP POST metodu ile
    /answer endpoint'i id parametresi ile çağrılır. Başarılı olduğunda çağrı cevaplanır ve HTTP 200
    döner.

    Args:
        body (AnswerCallPostJsonBody):
        body (AnswerCallPostDataBody):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        body=body,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    body:    AnswerCallPostJsonBody  |     AnswerCallPostDataBody  | Unset = UNSET,

) -> str | None:
    """ Çağrıyı Cevaplama (POST)

     manual_answer=true parametresi ile başlatılmış bir çağrıyı cevaplamak için HTTP POST metodu ile
    /answer endpoint'i id parametresi ile çağrılır. Başarılı olduğunda çağrı cevaplanır ve HTTP 200
    döner.

    Args:
        body (AnswerCallPostJsonBody):
        body (AnswerCallPostDataBody):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
body=body,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    body:    AnswerCallPostJsonBody  |     AnswerCallPostDataBody  | Unset = UNSET,

) -> Response[str]:
    """ Çağrıyı Cevaplama (POST)

     manual_answer=true parametresi ile başlatılmış bir çağrıyı cevaplamak için HTTP POST metodu ile
    /answer endpoint'i id parametresi ile çağrılır. Başarılı olduğunda çağrı cevaplanır ve HTTP 200
    döner.

    Args:
        body (AnswerCallPostJsonBody):
        body (AnswerCallPostDataBody):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        body=body,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    body:    AnswerCallPostJsonBody  |     AnswerCallPostDataBody  | Unset = UNSET,

) -> str | None:
    """ Çağrıyı Cevaplama (POST)

     manual_answer=true parametresi ile başlatılmış bir çağrıyı cevaplamak için HTTP POST metodu ile
    /answer endpoint'i id parametresi ile çağrılır. Başarılı olduğunda çağrı cevaplanır ve HTTP 200
    döner.

    Args:
        body (AnswerCallPostJsonBody):
        body (AnswerCallPostDataBody):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
body=body,

    )).parsed
