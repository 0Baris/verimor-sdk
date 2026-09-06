from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...types import UNSET, Unset



def _get_kwargs(
    *,
    username: str,
    password: str,
    dest: str,
    msg: str,
    source_addr: str | Unset = UNSET,
    valid_for: str | Unset = UNSET,
    datacoding: int | Unset = UNSET,
    is_commercial: bool | Unset = UNSET,
    iys_recipient_type: str | Unset = UNSET,
    send_at: str | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["username"] = username

    params["password"] = password

    params["dest"] = dest

    params["msg"] = msg

    params["source_addr"] = source_addr

    params["valid_for"] = valid_for

    params["datacoding"] = datacoding

    params["is_commercial"] = is_commercial

    params["iys_recipient_type"] = iys_recipient_type

    params["send_at"] = send_at


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/v2/send",
        "params": params,
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> int | str | None:
    if response.status_code == 200:
        response_200 = cast(int, response.text)
        return response_200

    if response.status_code == 400:
        response_400 = response.text
        return response_400

    if response.status_code == 401:
        response_401 = response.text
        return response_401

    if response.status_code == 403:
        response_403 = response.text
        return response_403

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[int | str]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    dest: str,
    msg: str,
    source_addr: str | Unset = UNSET,
    valid_for: str | Unset = UNSET,
    datacoding: int | Unset = UNSET,
    is_commercial: bool | Unset = UNSET,
    iys_recipient_type: str | Unset = UNSET,
    send_at: str | Unset = UNSET,

) -> Response[int | str]:
    """ SMS Gönderme (GET)

     Aynı mesajı birden çok numaraya HTTP(S) GET (Plain de denir) ile gönderir; yanıtı düz metin olarak
    döner. Farklı numaralara farklı mesaj göndermek için /v2/send.json (POST JSON) kullanın. Bu endpoint
    /v2/iys_consents.json ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek
    gönderebilirsiniz (burst 80).

    Args:
        username (str):
        password (str):
        dest (str):
        msg (str):
        source_addr (str | Unset):
        valid_for (str | Unset):
        datacoding (int | Unset):
        is_commercial (bool | Unset):
        iys_recipient_type (str | Unset):
        send_at (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[int | str]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
dest=dest,
msg=msg,
source_addr=source_addr,
valid_for=valid_for,
datacoding=datacoding,
is_commercial=is_commercial,
iys_recipient_type=iys_recipient_type,
send_at=send_at,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    dest: str,
    msg: str,
    source_addr: str | Unset = UNSET,
    valid_for: str | Unset = UNSET,
    datacoding: int | Unset = UNSET,
    is_commercial: bool | Unset = UNSET,
    iys_recipient_type: str | Unset = UNSET,
    send_at: str | Unset = UNSET,

) -> int | str | None:
    """ SMS Gönderme (GET)

     Aynı mesajı birden çok numaraya HTTP(S) GET (Plain de denir) ile gönderir; yanıtı düz metin olarak
    döner. Farklı numaralara farklı mesaj göndermek için /v2/send.json (POST JSON) kullanın. Bu endpoint
    /v2/iys_consents.json ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek
    gönderebilirsiniz (burst 80).

    Args:
        username (str):
        password (str):
        dest (str):
        msg (str):
        source_addr (str | Unset):
        valid_for (str | Unset):
        datacoding (int | Unset):
        is_commercial (bool | Unset):
        iys_recipient_type (str | Unset):
        send_at (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        int | str
     """


    return sync_detailed(
        client=client,
username=username,
password=password,
dest=dest,
msg=msg,
source_addr=source_addr,
valid_for=valid_for,
datacoding=datacoding,
is_commercial=is_commercial,
iys_recipient_type=iys_recipient_type,
send_at=send_at,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    dest: str,
    msg: str,
    source_addr: str | Unset = UNSET,
    valid_for: str | Unset = UNSET,
    datacoding: int | Unset = UNSET,
    is_commercial: bool | Unset = UNSET,
    iys_recipient_type: str | Unset = UNSET,
    send_at: str | Unset = UNSET,

) -> Response[int | str]:
    """ SMS Gönderme (GET)

     Aynı mesajı birden çok numaraya HTTP(S) GET (Plain de denir) ile gönderir; yanıtı düz metin olarak
    döner. Farklı numaralara farklı mesaj göndermek için /v2/send.json (POST JSON) kullanın. Bu endpoint
    /v2/iys_consents.json ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek
    gönderebilirsiniz (burst 80).

    Args:
        username (str):
        password (str):
        dest (str):
        msg (str):
        source_addr (str | Unset):
        valid_for (str | Unset):
        datacoding (int | Unset):
        is_commercial (bool | Unset):
        iys_recipient_type (str | Unset):
        send_at (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[int | str]
     """


    kwargs = _get_kwargs(
        username=username,
password=password,
dest=dest,
msg=msg,
source_addr=source_addr,
valid_for=valid_for,
datacoding=datacoding,
is_commercial=is_commercial,
iys_recipient_type=iys_recipient_type,
send_at=send_at,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient | Client,
    username: str,
    password: str,
    dest: str,
    msg: str,
    source_addr: str | Unset = UNSET,
    valid_for: str | Unset = UNSET,
    datacoding: int | Unset = UNSET,
    is_commercial: bool | Unset = UNSET,
    iys_recipient_type: str | Unset = UNSET,
    send_at: str | Unset = UNSET,

) -> int | str | None:
    """ SMS Gönderme (GET)

     Aynı mesajı birden çok numaraya HTTP(S) GET (Plain de denir) ile gönderir; yanıtı düz metin olarak
    döner. Farklı numaralara farklı mesaj göndermek için /v2/send.json (POST JSON) kullanın. Bu endpoint
    /v2/iys_consents.json ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek
    gönderebilirsiniz (burst 80).

    Args:
        username (str):
        password (str):
        dest (str):
        msg (str):
        source_addr (str | Unset):
        valid_for (str | Unset):
        datacoding (int | Unset):
        is_commercial (bool | Unset):
        iys_recipient_type (str | Unset):
        send_at (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        int | str
     """


    return (await asyncio_detailed(
        client=client,
username=username,
password=password,
dest=dest,
msg=msg,
source_addr=source_addr,
valid_for=valid_for,
datacoding=datacoding,
is_commercial=is_commercial,
iys_recipient_type=iys_recipient_type,
send_at=send_at,

    )).parsed
