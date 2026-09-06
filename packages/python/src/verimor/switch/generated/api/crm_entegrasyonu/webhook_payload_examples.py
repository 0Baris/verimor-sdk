from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.webhook_payload_examples_response_200 import WebhookPayloadExamplesResponse200
from typing import cast



def _get_kwargs(
    
) -> dict[str, Any]:
    

    

    

    _kwargs: dict[str, Any] = {
        "method": "get",
        "url": "/webhook-payload-examples",
    }


    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> WebhookPayloadExamplesResponse200 | None:
    if response.status_code == 200:
        response_200 = WebhookPayloadExamplesResponse200.from_dict(response.json())



        return response_200

    if client.raise_on_unexpected_status:
        raise errors.UnexpectedStatus(response.status_code, response.content)
    else:
        return None


def _build_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> Response[WebhookPayloadExamplesResponse200]:
    return Response(
        status_code=HTTPStatus(response.status_code),
        content=response.content,
        headers=response.headers,
        parsed=_parse_response(client=client, response=response),
    )


def sync_detailed(
    *,
    client: AuthenticatedClient | Client,

) -> Response[WebhookPayloadExamplesResponse200]:
    """ CRM Webhook Payload Örnekleri

     CRM entegrasyonu aktif olduğunda gönderilen webhook payload örnekleri. Bu endpoint gerçek bir API
    değildir, sadece dokümantasyon amaçlıdır.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[WebhookPayloadExamplesResponse200]
     """


    kwargs = _get_kwargs(
        
    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    *,
    client: AuthenticatedClient | Client,

) -> WebhookPayloadExamplesResponse200 | None:
    """ CRM Webhook Payload Örnekleri

     CRM entegrasyonu aktif olduğunda gönderilen webhook payload örnekleri. Bu endpoint gerçek bir API
    değildir, sadece dokümantasyon amaçlıdır.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        WebhookPayloadExamplesResponse200
     """


    return sync_detailed(
        client=client,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,

) -> Response[WebhookPayloadExamplesResponse200]:
    """ CRM Webhook Payload Örnekleri

     CRM entegrasyonu aktif olduğunda gönderilen webhook payload örnekleri. Bu endpoint gerçek bir API
    değildir, sadece dokümantasyon amaçlıdır.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[WebhookPayloadExamplesResponse200]
     """


    kwargs = _get_kwargs(
        
    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    *,
    client: AuthenticatedClient | Client,

) -> WebhookPayloadExamplesResponse200 | None:
    """ CRM Webhook Payload Örnekleri

     CRM entegrasyonu aktif olduğunda gönderilen webhook payload örnekleri. Bu endpoint gerçek bir API
    değildir, sadece dokümantasyon amaçlıdır.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        WebhookPayloadExamplesResponse200
     """


    return (await asyncio_detailed(
        client=client,

    )).parsed
