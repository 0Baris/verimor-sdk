from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors




def _get_kwargs(
    *,
    extension: str,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["extension"] = extension


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/webphone_tokens",
        "params": params,
    }


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
    extension: str,

) -> Response[str]:
    """ Dahili için Token (Anahtar) Alma (IFrame Gömme için)

     Web telefonunu kendi uygulamanızda kullanmak için token oluşturur. Her açılışta ilgili dahili için
    token alınmalıdır. Token 1 gün geçerlidir.

    Bulut Santral web telefonunu kendi web uygulamanızın içine iframe ile gömmek için kullanılır.
    Böylece kullanıcılarınız tek pencereyle çalışır ve iki ayrı sisteme login olmak zorunda kalmazlar.

    Online İşlem Merkezi => Abonelik İşlemleri => Personel Hesapları sayfasında, web telefonunu
    kullanacak her dahili için bir personel hesabı açıp ilgili dahiliyi seçmiş olmalısınız. Karşılığında
    personel hesabı olmayan dahililer web telefonunu kullanamaz.

    Args:
        extension (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        extension=extension,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    extension: str,

) -> str | None:
    """ Dahili için Token (Anahtar) Alma (IFrame Gömme için)

     Web telefonunu kendi uygulamanızda kullanmak için token oluşturur. Her açılışta ilgili dahili için
    token alınmalıdır. Token 1 gün geçerlidir.

    Bulut Santral web telefonunu kendi web uygulamanızın içine iframe ile gömmek için kullanılır.
    Böylece kullanıcılarınız tek pencereyle çalışır ve iki ayrı sisteme login olmak zorunda kalmazlar.

    Online İşlem Merkezi => Abonelik İşlemleri => Personel Hesapları sayfasında, web telefonunu
    kullanacak her dahili için bir personel hesabı açıp ilgili dahiliyi seçmiş olmalısınız. Karşılığında
    personel hesabı olmayan dahililer web telefonunu kullanamaz.

    Args:
        extension (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
extension=extension,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    extension: str,

) -> Response[str]:
    """ Dahili için Token (Anahtar) Alma (IFrame Gömme için)

     Web telefonunu kendi uygulamanızda kullanmak için token oluşturur. Her açılışta ilgili dahili için
    token alınmalıdır. Token 1 gün geçerlidir.

    Bulut Santral web telefonunu kendi web uygulamanızın içine iframe ile gömmek için kullanılır.
    Böylece kullanıcılarınız tek pencereyle çalışır ve iki ayrı sisteme login olmak zorunda kalmazlar.

    Online İşlem Merkezi => Abonelik İşlemleri => Personel Hesapları sayfasında, web telefonunu
    kullanacak her dahili için bir personel hesabı açıp ilgili dahiliyi seçmiş olmalısınız. Karşılığında
    personel hesabı olmayan dahililer web telefonunu kullanamaz.

    Args:
        extension (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        extension=extension,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    extension: str,

) -> str | None:
    """ Dahili için Token (Anahtar) Alma (IFrame Gömme için)

     Web telefonunu kendi uygulamanızda kullanmak için token oluşturur. Her açılışta ilgili dahili için
    token alınmalıdır. Token 1 gün geçerlidir.

    Bulut Santral web telefonunu kendi web uygulamanızın içine iframe ile gömmek için kullanılır.
    Böylece kullanıcılarınız tek pencereyle çalışır ve iki ayrı sisteme login olmak zorunda kalmazlar.

    Online İşlem Merkezi => Abonelik İşlemleri => Personel Hesapları sayfasında, web telefonunu
    kullanacak her dahili için bir personel hesabı açıp ilgili dahiliyi seçmiş olmalısınız. Karşılığında
    personel hesabı olmayan dahililer web telefonunu kullanamaz.

    Args:
        extension (str):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
extension=extension,

    )).parsed
