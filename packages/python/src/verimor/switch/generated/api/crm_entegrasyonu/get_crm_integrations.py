from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.get_crm_integrations_response_200 import GetCrmIntegrationsResponse200
from typing import cast



def _get_kwargs(
    
) -> dict[str, Any]:
    

    

    

    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/crm_integrations",
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Any | GetCrmIntegrationsResponse200 | None:
    if response.status_code == 200:
        response_200 = GetCrmIntegrationsResponse200.from_dict(response.json())



        return response_200

    if response.status_code == 401:
        response_401 = cast(Any, None)
        return response_401

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[Any | GetCrmIntegrationsResponse200]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient,

) -> Response[Any | GetCrmIntegrationsResponse200]:
    """ CRM Entegrasyon Ayarlarını Getirme

     Çağrı olayları (çalma, cevaplanma, kapanma) için mevcut CRM webhook entegrasyon ayarlarını getirir.
    Bu endpoint ile hangi olaylar için webhook bildirimleri aktif olduğunu ve webhook URL'ini
    öğrenebilirsiniz.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | GetCrmIntegrationsResponse200]
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

) -> Any | GetCrmIntegrationsResponse200 | None:
    """ CRM Entegrasyon Ayarlarını Getirme

     Çağrı olayları (çalma, cevaplanma, kapanma) için mevcut CRM webhook entegrasyon ayarlarını getirir.
    Bu endpoint ile hangi olaylar için webhook bildirimleri aktif olduğunu ve webhook URL'ini
    öğrenebilirsiniz.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | GetCrmIntegrationsResponse200
     """


    return sync_detailed(
        client=client,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient,

) -> Response[Any | GetCrmIntegrationsResponse200]:
    """ CRM Entegrasyon Ayarlarını Getirme

     Çağrı olayları (çalma, cevaplanma, kapanma) için mevcut CRM webhook entegrasyon ayarlarını getirir.
    Bu endpoint ile hangi olaylar için webhook bildirimleri aktif olduğunu ve webhook URL'ini
    öğrenebilirsiniz.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[Any | GetCrmIntegrationsResponse200]
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

) -> Any | GetCrmIntegrationsResponse200 | None:
    """ CRM Entegrasyon Ayarlarını Getirme

     Çağrı olayları (çalma, cevaplanma, kapanma) için mevcut CRM webhook entegrasyon ayarlarını getirir.
    Bu endpoint ile hangi olaylar için webhook bildirimleri aktif olduğunu ve webhook URL'ini
    öğrenebilirsiniz.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Any | GetCrmIntegrationsResponse200
     """


    return (await asyncio_detailed(
        client=client,

    )).parsed
