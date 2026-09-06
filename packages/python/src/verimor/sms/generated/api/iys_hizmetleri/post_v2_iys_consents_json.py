from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...models.post_v2_iys_consents_json_body import PostV2IysConsentsJsonBody
from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    *,
    body: PostV2IysConsentsJsonBody | Unset = UNSET,

) -> dict[str, Any]:
    headers: dict[str, Any] = {}


    

    

    _kwargs: dict[str, Any] = {
        "method": "post",
        "url": "/v2/iys_consents.json",
    }

    
    if not isinstance(body, Unset):
        _kwargs["json"] = body.to_dict()

    headers["Content-Type"] = "application/json"

    _kwargs["headers"] = headers
    return _kwargs



def _parse_response(*, client: AuthenticatedClient | Client, response: httpx.Response) -> int | str | None:
    if response.status_code == 200:
        response_200 = cast(int, response.text)
        return response_200

    if response.status_code == 400:
        response_400 = response.text
        return response_400

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
    body: PostV2IysConsentsJsonBody | Unset = UNSET,

) -> Response[int | str]:
    """ İzin Yönetimi

     <p>Ticari ileti göndermek için markalarınızı İYSye (İleti Yönetim Sistemi) kaydettirmiş olmalı
    ve&nbsp;<a href="https://oim.verimor.com.tr/headers" rel="nofollow">OİM Başlık
    Yönetiminden</a>&nbsp;ilgili başlığa İYS kodlarını girmiş olmanız gerekir. Bu işlemleri yaptıktan
    sonra müşterilerinizden aldığınız izinleri bu yöntemle İYSye bildirebilirsiniz.</p><p>Aşağıdaki
    örnekte olduğu gibi bir JSON string POST edilir.</p><p>Daha sonra istenirse, "İYS İZİNLERİ RAPORU"
    başlığı altındaki dökümandan faydalanılarak, gönderilen izinlerin durumları alınabilir.</p><p>Bu
    endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek
    gönderebilirsiniz (burst 80).</p>

    Args:
        body (PostV2IysConsentsJsonBody | Unset):  Example: {'username': '908501234567',
            'password': 'xxxxxxx', 'source_addr': 'BASLIGIM', 'consents': [{'type': 'MESAJ', 'source':
            'HS_WEB', 'status': 'ONAY', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14
            13:30:30', 'recipient': '905111111111'}, {'type': 'ARAMA', 'source': 'HS_MESAJ', 'status':
            'RET', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
            '905111111112'}, {'type': 'EPOSTA', 'source': 'HS_MESAJ', 'status': 'RET',
            'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
            'arge@verimor.com.tr'}]}.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[int | str]
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
    client: AuthenticatedClient | Client,
    body: PostV2IysConsentsJsonBody | Unset = UNSET,

) -> int | str | None:
    """ İzin Yönetimi

     <p>Ticari ileti göndermek için markalarınızı İYSye (İleti Yönetim Sistemi) kaydettirmiş olmalı
    ve&nbsp;<a href="https://oim.verimor.com.tr/headers" rel="nofollow">OİM Başlık
    Yönetiminden</a>&nbsp;ilgili başlığa İYS kodlarını girmiş olmanız gerekir. Bu işlemleri yaptıktan
    sonra müşterilerinizden aldığınız izinleri bu yöntemle İYSye bildirebilirsiniz.</p><p>Aşağıdaki
    örnekte olduğu gibi bir JSON string POST edilir.</p><p>Daha sonra istenirse, "İYS İZİNLERİ RAPORU"
    başlığı altındaki dökümandan faydalanılarak, gönderilen izinlerin durumları alınabilir.</p><p>Bu
    endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek
    gönderebilirsiniz (burst 80).</p>

    Args:
        body (PostV2IysConsentsJsonBody | Unset):  Example: {'username': '908501234567',
            'password': 'xxxxxxx', 'source_addr': 'BASLIGIM', 'consents': [{'type': 'MESAJ', 'source':
            'HS_WEB', 'status': 'ONAY', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14
            13:30:30', 'recipient': '905111111111'}, {'type': 'ARAMA', 'source': 'HS_MESAJ', 'status':
            'RET', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
            '905111111112'}, {'type': 'EPOSTA', 'source': 'HS_MESAJ', 'status': 'RET',
            'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
            'arge@verimor.com.tr'}]}.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        int | str
     """


    return sync_detailed(
        client=client,
body=body,

    ).parsed

async def asyncio_detailed(
    *,
    client: AuthenticatedClient | Client,
    body: PostV2IysConsentsJsonBody | Unset = UNSET,

) -> Response[int | str]:
    """ İzin Yönetimi

     <p>Ticari ileti göndermek için markalarınızı İYSye (İleti Yönetim Sistemi) kaydettirmiş olmalı
    ve&nbsp;<a href="https://oim.verimor.com.tr/headers" rel="nofollow">OİM Başlık
    Yönetiminden</a>&nbsp;ilgili başlığa İYS kodlarını girmiş olmanız gerekir. Bu işlemleri yaptıktan
    sonra müşterilerinizden aldığınız izinleri bu yöntemle İYSye bildirebilirsiniz.</p><p>Aşağıdaki
    örnekte olduğu gibi bir JSON string POST edilir.</p><p>Daha sonra istenirse, "İYS İZİNLERİ RAPORU"
    başlığı altındaki dökümandan faydalanılarak, gönderilen izinlerin durumları alınabilir.</p><p>Bu
    endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek
    gönderebilirsiniz (burst 80).</p>

    Args:
        body (PostV2IysConsentsJsonBody | Unset):  Example: {'username': '908501234567',
            'password': 'xxxxxxx', 'source_addr': 'BASLIGIM', 'consents': [{'type': 'MESAJ', 'source':
            'HS_WEB', 'status': 'ONAY', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14
            13:30:30', 'recipient': '905111111111'}, {'type': 'ARAMA', 'source': 'HS_MESAJ', 'status':
            'RET', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
            '905111111112'}, {'type': 'EPOSTA', 'source': 'HS_MESAJ', 'status': 'RET',
            'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
            'arge@verimor.com.tr'}]}.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[int | str]
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
    client: AuthenticatedClient | Client,
    body: PostV2IysConsentsJsonBody | Unset = UNSET,

) -> int | str | None:
    """ İzin Yönetimi

     <p>Ticari ileti göndermek için markalarınızı İYSye (İleti Yönetim Sistemi) kaydettirmiş olmalı
    ve&nbsp;<a href="https://oim.verimor.com.tr/headers" rel="nofollow">OİM Başlık
    Yönetiminden</a>&nbsp;ilgili başlığa İYS kodlarını girmiş olmanız gerekir. Bu işlemleri yaptıktan
    sonra müşterilerinizden aldığınız izinleri bu yöntemle İYSye bildirebilirsiniz.</p><p>Aşağıdaki
    örnekte olduğu gibi bir JSON string POST edilir.</p><p>Daha sonra istenirse, "İYS İZİNLERİ RAPORU"
    başlığı altındaki dökümandan faydalanılarak, gönderilen izinlerin durumları alınabilir.</p><p>Bu
    endpoint /v2/send ile aynı hız sınırı havuzunu paylaşır — dakikada toplam 240 istek
    gönderebilirsiniz (burst 80).</p>

    Args:
        body (PostV2IysConsentsJsonBody | Unset):  Example: {'username': '908501234567',
            'password': 'xxxxxxx', 'source_addr': 'BASLIGIM', 'consents': [{'type': 'MESAJ', 'source':
            'HS_WEB', 'status': 'ONAY', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14
            13:30:30', 'recipient': '905111111111'}, {'type': 'ARAMA', 'source': 'HS_MESAJ', 'status':
            'RET', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
            '905111111112'}, {'type': 'EPOSTA', 'source': 'HS_MESAJ', 'status': 'RET',
            'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
            'arge@verimor.com.tr'}]}.

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        int | str
     """


    return (await asyncio_detailed(
        client=client,
body=body,

    )).parsed
