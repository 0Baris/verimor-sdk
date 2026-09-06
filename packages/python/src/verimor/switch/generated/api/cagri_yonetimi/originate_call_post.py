from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET, Unset
from ... import errors

from ...models.originate_call_post_data_body import OriginateCallPostDataBody
from ...models.originate_call_post_json_body import OriginateCallPostJsonBody
from typing import cast



def _get_kwargs(
    *,
    body:    OriginateCallPostJsonBody  |     OriginateCallPostDataBody  | Unset = UNSET,

) -> dict[str, Any]:
    headers: dict[str, Any] = {}


    

    

    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/originate",
    }

    if isinstance(body, OriginateCallPostJsonBody):
        _kwargs["json"] = body.to_dict()

        headers["Content-Type"] = "application/json"
    if isinstance(body, OriginateCallPostDataBody):
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
    body:    OriginateCallPostJsonBody  |     OriginateCallPostDataBody  | Unset = UNSET,

) -> Response[str]:
    """ Çağrı Başlatma (POST)

     Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP
    POST metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint saniyede 3 istek
    (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

    Args:
        body (OriginateCallPostJsonBody):
        body (OriginateCallPostDataBody):

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
    body:    OriginateCallPostJsonBody  |     OriginateCallPostDataBody  | Unset = UNSET,

) -> str | None:
    """ Çağrı Başlatma (POST)

     Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP
    POST metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint saniyede 3 istek
    (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

    Args:
        body (OriginateCallPostJsonBody):
        body (OriginateCallPostDataBody):

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
    body:    OriginateCallPostJsonBody  |     OriginateCallPostDataBody  | Unset = UNSET,

) -> Response[str]:
    """ Çağrı Başlatma (POST)

     Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP
    POST metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint saniyede 3 istek
    (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

    Args:
        body (OriginateCallPostJsonBody):
        body (OriginateCallPostDataBody):

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
    body:    OriginateCallPostJsonBody  |     OriginateCallPostDataBody  | Unset = UNSET,

) -> str | None:
    """ Çağrı Başlatma (POST)

     Uygulamalarınız üzerinden santraldeki bir dahiliye çağrı başlatmak için kullanılır. Bunun için HTTP
    POST metodu ile api.bulutsantralim.com adresi aşağıdaki parametrelerle çağrılır. İstek başarılı
    olduğunda HTTP 200 Status kodu ile mesajın Body'sinde call_uuid döner. İstek başarısız olduğunda ise
    ilgili HTTP Status kodu ile mesajın Body'sinde hata mesajı döner. Bu endpoint saniyede 3 istek
    (yaklaşık dakikada 180) limitine tabidir, burst değeri 100'dür.

    Args:
        body (OriginateCallPostJsonBody):
        body (OriginateCallPostDataBody):

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
