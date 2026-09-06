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
    ringing: str | Unset = UNSET,
    answered: str | Unset = UNSET,
    hangup: str | Unset = UNSET,
    notification_url: str | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["ringing"] = ringing

    params["answered"] = answered

    params["hangup"] = hangup

    params["notification_url"] = notification_url


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/crm_integrations",
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
    ringing: str | Unset = UNSET,
    answered: str | Unset = UNSET,
    hangup: str | Unset = UNSET,
    notification_url: str | Unset = UNSET,

) -> Response[str]:
    """ CRM Entegrasyon Ayarlarını Güncelleme

     Çağrı olayları için CRM webhook entegrasyon ayarlarını günceller. Çalma, cevaplanma ve kapanma
    olayları için bildirimleri etkinleştirir veya devre dışı bırakır. Webhook URL'i de güncellenebilir.

    Args:
        ringing (str | Unset):
        answered (str | Unset):
        hangup (str | Unset):
        notification_url (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        ringing=ringing,
answered=answered,
hangup=hangup,
notification_url=notification_url,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient,
    ringing: str | Unset = UNSET,
    answered: str | Unset = UNSET,
    hangup: str | Unset = UNSET,
    notification_url: str | Unset = UNSET,

) -> str | None:
    """ CRM Entegrasyon Ayarlarını Güncelleme

     Çağrı olayları için CRM webhook entegrasyon ayarlarını günceller. Çalma, cevaplanma ve kapanma
    olayları için bildirimleri etkinleştirir veya devre dışı bırakır. Webhook URL'i de güncellenebilir.

    Args:
        ringing (str | Unset):
        answered (str | Unset):
        hangup (str | Unset):
        notification_url (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        client=client,
ringing=ringing,
answered=answered,
hangup=hangup,
notification_url=notification_url,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,
    ringing: str | Unset = UNSET,
    answered: str | Unset = UNSET,
    hangup: str | Unset = UNSET,
    notification_url: str | Unset = UNSET,

) -> Response[str]:
    """ CRM Entegrasyon Ayarlarını Güncelleme

     Çağrı olayları için CRM webhook entegrasyon ayarlarını günceller. Çalma, cevaplanma ve kapanma
    olayları için bildirimleri etkinleştirir veya devre dışı bırakır. Webhook URL'i de güncellenebilir.

    Args:
        ringing (str | Unset):
        answered (str | Unset):
        hangup (str | Unset):
        notification_url (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        ringing=ringing,
answered=answered,
hangup=hangup,
notification_url=notification_url,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient,
    ringing: str | Unset = UNSET,
    answered: str | Unset = UNSET,
    hangup: str | Unset = UNSET,
    notification_url: str | Unset = UNSET,

) -> str | None:
    """ CRM Entegrasyon Ayarlarını Güncelleme

     Çağrı olayları için CRM webhook entegrasyon ayarlarını günceller. Çalma, cevaplanma ve kapanma
    olayları için bildirimleri etkinleştirir veya devre dışı bırakır. Webhook URL'i de güncellenebilir.

    Args:
        ringing (str | Unset):
        answered (str | Unset):
        hangup (str | Unset):
        notification_url (str | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        client=client,
ringing=ringing,
answered=answered,
hangup=hangup,
notification_url=notification_url,

    )).parsed
