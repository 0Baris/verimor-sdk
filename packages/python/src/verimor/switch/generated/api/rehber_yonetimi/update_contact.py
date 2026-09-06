from http import HTTPStatus
from typing import Any, cast
from urllib.parse import quote

import httpx

from ...client import AuthenticatedClient, Client
from ...types import Response, UNSET
from ... import errors

from ...types import UNSET, Unset
from typing import cast



def _get_kwargs(
    id: int,
    *,
    salutation: str | Unset = UNSET,
    name: str | Unset = UNSET,
    surname: str | Unset = UNSET,
    tckn: str | Unset = UNSET,
    description: str | Unset = UNSET,
    phone: str | Unset = UNSET,
    phone1: str | Unset = UNSET,
    email: str | Unset = UNSET,
    title: str | Unset = UNSET,
    phone2: str | Unset = UNSET,
    fax: str | Unset = UNSET,
    gender: str | Unset = UNSET,
    birthday: str | Unset = UNSET,
    birthday_sms: bool | Unset = UNSET,
    weddingday: str | Unset = UNSET,
    weddingday_sms: bool | Unset = UNSET,
    address: str | Unset = UNSET,
    note1: str | Unset = UNSET,
    note2: str | Unset = UNSET,
    note3: str | Unset = UNSET,
    note4: str | Unset = UNSET,
    company_name: str | Unset = UNSET,
    monthly_sms_day: int | Unset = UNSET,
    monthly_sms_message: str | Unset = UNSET,
    group_ids: list[int] | Unset = UNSET,

) -> dict[str, Any]:
    

    

    params: dict[str, Any] = {}

    params["salutation"] = salutation

    params["name"] = name

    params["surname"] = surname

    params["tckn"] = tckn

    params["description"] = description

    params["phone"] = phone

    params["phone1"] = phone1

    params["email"] = email

    params["title"] = title

    params["phone2"] = phone2

    params["fax"] = fax

    params["gender"] = gender

    params["birthday"] = birthday

    params["birthday_sms"] = birthday_sms

    params["weddingday"] = weddingday

    params["weddingday_sms"] = weddingday_sms

    params["address"] = address

    params["note1"] = note1

    params["note2"] = note2

    params["note3"] = note3

    params["note4"] = note4

    params["company_name"] = company_name

    params["monthly_sms_day"] = monthly_sms_day

    params["monthly_sms_message"] = monthly_sms_message

    json_group_ids: list[int] | Unset = UNSET
    if not isinstance(group_ids, Unset):
        json_group_ids = group_ids


    params["group_ids"] = json_group_ids


    params = {k: v for k, v in params.items() if v is not UNSET and v is not None}


    _kwargs: dict[str, Any] = {
        "method": "patch",
        "url": "/contacts/{id}".format(id=quote(str(id), safe=""),),
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
    id: int,
    *,
    client: AuthenticatedClient,
    salutation: str | Unset = UNSET,
    name: str | Unset = UNSET,
    surname: str | Unset = UNSET,
    tckn: str | Unset = UNSET,
    description: str | Unset = UNSET,
    phone: str | Unset = UNSET,
    phone1: str | Unset = UNSET,
    email: str | Unset = UNSET,
    title: str | Unset = UNSET,
    phone2: str | Unset = UNSET,
    fax: str | Unset = UNSET,
    gender: str | Unset = UNSET,
    birthday: str | Unset = UNSET,
    birthday_sms: bool | Unset = UNSET,
    weddingday: str | Unset = UNSET,
    weddingday_sms: bool | Unset = UNSET,
    address: str | Unset = UNSET,
    note1: str | Unset = UNSET,
    note2: str | Unset = UNSET,
    note3: str | Unset = UNSET,
    note4: str | Unset = UNSET,
    company_name: str | Unset = UNSET,
    monthly_sms_day: int | Unset = UNSET,
    monthly_sms_message: str | Unset = UNSET,
    group_ids: list[int] | Unset = UNSET,

) -> Response[str]:
    """ Kişi Güncelleme

     Mevcut bir kişiyi günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. Kişi eklerken
    kullanabileceğiniz tüm parametreler güncelleme için de geçerlidir. PATCH metodu ile
    api.bulutsantralim.com/contacts/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu
    ile mesajın Body'sinde hata mesajı döner.

    Args:
        id (int):
        salutation (str | Unset):
        name (str | Unset):
        surname (str | Unset):
        tckn (str | Unset):
        description (str | Unset):
        phone (str | Unset):
        phone1 (str | Unset):
        email (str | Unset):
        title (str | Unset):
        phone2 (str | Unset):
        fax (str | Unset):
        gender (str | Unset):
        birthday (str | Unset):
        birthday_sms (bool | Unset):
        weddingday (str | Unset):
        weddingday_sms (bool | Unset):
        address (str | Unset):
        note1 (str | Unset):
        note2 (str | Unset):
        note3 (str | Unset):
        note4 (str | Unset):
        company_name (str | Unset):
        monthly_sms_day (int | Unset):
        monthly_sms_message (str | Unset):
        group_ids (list[int] | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
salutation=salutation,
name=name,
surname=surname,
tckn=tckn,
description=description,
phone=phone,
phone1=phone1,
email=email,
title=title,
phone2=phone2,
fax=fax,
gender=gender,
birthday=birthday,
birthday_sms=birthday_sms,
weddingday=weddingday,
weddingday_sms=weddingday_sms,
address=address,
note1=note1,
note2=note2,
note3=note3,
note4=note4,
company_name=company_name,
monthly_sms_day=monthly_sms_day,
monthly_sms_message=monthly_sms_message,
group_ids=group_ids,

    )

    response = client.get_httpx_client().request(
        **kwargs,
    )

    return _build_response(client=client, response=response)

def sync(
    id: int,
    *,
    client: AuthenticatedClient,
    salutation: str | Unset = UNSET,
    name: str | Unset = UNSET,
    surname: str | Unset = UNSET,
    tckn: str | Unset = UNSET,
    description: str | Unset = UNSET,
    phone: str | Unset = UNSET,
    phone1: str | Unset = UNSET,
    email: str | Unset = UNSET,
    title: str | Unset = UNSET,
    phone2: str | Unset = UNSET,
    fax: str | Unset = UNSET,
    gender: str | Unset = UNSET,
    birthday: str | Unset = UNSET,
    birthday_sms: bool | Unset = UNSET,
    weddingday: str | Unset = UNSET,
    weddingday_sms: bool | Unset = UNSET,
    address: str | Unset = UNSET,
    note1: str | Unset = UNSET,
    note2: str | Unset = UNSET,
    note3: str | Unset = UNSET,
    note4: str | Unset = UNSET,
    company_name: str | Unset = UNSET,
    monthly_sms_day: int | Unset = UNSET,
    monthly_sms_message: str | Unset = UNSET,
    group_ids: list[int] | Unset = UNSET,

) -> str | None:
    """ Kişi Güncelleme

     Mevcut bir kişiyi günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. Kişi eklerken
    kullanabileceğiniz tüm parametreler güncelleme için de geçerlidir. PATCH metodu ile
    api.bulutsantralim.com/contacts/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu
    ile mesajın Body'sinde hata mesajı döner.

    Args:
        id (int):
        salutation (str | Unset):
        name (str | Unset):
        surname (str | Unset):
        tckn (str | Unset):
        description (str | Unset):
        phone (str | Unset):
        phone1 (str | Unset):
        email (str | Unset):
        title (str | Unset):
        phone2 (str | Unset):
        fax (str | Unset):
        gender (str | Unset):
        birthday (str | Unset):
        birthday_sms (bool | Unset):
        weddingday (str | Unset):
        weddingday_sms (bool | Unset):
        address (str | Unset):
        note1 (str | Unset):
        note2 (str | Unset):
        note3 (str | Unset):
        note4 (str | Unset):
        company_name (str | Unset):
        monthly_sms_day (int | Unset):
        monthly_sms_message (str | Unset):
        group_ids (list[int] | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return sync_detailed(
        id=id,
client=client,
salutation=salutation,
name=name,
surname=surname,
tckn=tckn,
description=description,
phone=phone,
phone1=phone1,
email=email,
title=title,
phone2=phone2,
fax=fax,
gender=gender,
birthday=birthday,
birthday_sms=birthday_sms,
weddingday=weddingday,
weddingday_sms=weddingday_sms,
address=address,
note1=note1,
note2=note2,
note3=note3,
note4=note4,
company_name=company_name,
monthly_sms_day=monthly_sms_day,
monthly_sms_message=monthly_sms_message,
group_ids=group_ids,

    ).parsed

async def asyncio_detailed(
    id: int,
    *,
    client: AuthenticatedClient,
    salutation: str | Unset = UNSET,
    name: str | Unset = UNSET,
    surname: str | Unset = UNSET,
    tckn: str | Unset = UNSET,
    description: str | Unset = UNSET,
    phone: str | Unset = UNSET,
    phone1: str | Unset = UNSET,
    email: str | Unset = UNSET,
    title: str | Unset = UNSET,
    phone2: str | Unset = UNSET,
    fax: str | Unset = UNSET,
    gender: str | Unset = UNSET,
    birthday: str | Unset = UNSET,
    birthday_sms: bool | Unset = UNSET,
    weddingday: str | Unset = UNSET,
    weddingday_sms: bool | Unset = UNSET,
    address: str | Unset = UNSET,
    note1: str | Unset = UNSET,
    note2: str | Unset = UNSET,
    note3: str | Unset = UNSET,
    note4: str | Unset = UNSET,
    company_name: str | Unset = UNSET,
    monthly_sms_day: int | Unset = UNSET,
    monthly_sms_message: str | Unset = UNSET,
    group_ids: list[int] | Unset = UNSET,

) -> Response[str]:
    """ Kişi Güncelleme

     Mevcut bir kişiyi günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. Kişi eklerken
    kullanabileceğiniz tüm parametreler güncelleme için de geçerlidir. PATCH metodu ile
    api.bulutsantralim.com/contacts/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu
    ile mesajın Body'sinde hata mesajı döner.

    Args:
        id (int):
        salutation (str | Unset):
        name (str | Unset):
        surname (str | Unset):
        tckn (str | Unset):
        description (str | Unset):
        phone (str | Unset):
        phone1 (str | Unset):
        email (str | Unset):
        title (str | Unset):
        phone2 (str | Unset):
        fax (str | Unset):
        gender (str | Unset):
        birthday (str | Unset):
        birthday_sms (bool | Unset):
        weddingday (str | Unset):
        weddingday_sms (bool | Unset):
        address (str | Unset):
        note1 (str | Unset):
        note2 (str | Unset):
        note3 (str | Unset):
        note4 (str | Unset):
        company_name (str | Unset):
        monthly_sms_day (int | Unset):
        monthly_sms_message (str | Unset):
        group_ids (list[int] | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        Response[str]
     """


    kwargs = _get_kwargs(
        id=id,
salutation=salutation,
name=name,
surname=surname,
tckn=tckn,
description=description,
phone=phone,
phone1=phone1,
email=email,
title=title,
phone2=phone2,
fax=fax,
gender=gender,
birthday=birthday,
birthday_sms=birthday_sms,
weddingday=weddingday,
weddingday_sms=weddingday_sms,
address=address,
note1=note1,
note2=note2,
note3=note3,
note4=note4,
company_name=company_name,
monthly_sms_day=monthly_sms_day,
monthly_sms_message=monthly_sms_message,
group_ids=group_ids,

    )

    response = await client.get_async_httpx_client().request(
        **kwargs
    )

    return _build_response(client=client, response=response)

async def asyncio(
    id: int,
    *,
    client: AuthenticatedClient,
    salutation: str | Unset = UNSET,
    name: str | Unset = UNSET,
    surname: str | Unset = UNSET,
    tckn: str | Unset = UNSET,
    description: str | Unset = UNSET,
    phone: str | Unset = UNSET,
    phone1: str | Unset = UNSET,
    email: str | Unset = UNSET,
    title: str | Unset = UNSET,
    phone2: str | Unset = UNSET,
    fax: str | Unset = UNSET,
    gender: str | Unset = UNSET,
    birthday: str | Unset = UNSET,
    birthday_sms: bool | Unset = UNSET,
    weddingday: str | Unset = UNSET,
    weddingday_sms: bool | Unset = UNSET,
    address: str | Unset = UNSET,
    note1: str | Unset = UNSET,
    note2: str | Unset = UNSET,
    note3: str | Unset = UNSET,
    note4: str | Unset = UNSET,
    company_name: str | Unset = UNSET,
    monthly_sms_day: int | Unset = UNSET,
    monthly_sms_message: str | Unset = UNSET,
    group_ids: list[int] | Unset = UNSET,

) -> str | None:
    """ Kişi Güncelleme

     Mevcut bir kişiyi günceller. Google Kişiler entegrasyonunun kapalı olması gerekir. Kişi eklerken
    kullanabileceğiniz tüm parametreler güncelleme için de geçerlidir. PATCH metodu ile
    api.bulutsantralim.com/contacts/{id} adresine istek gönderilir. İstek başarılı olduğunda HTTP 200
    Status kodu ile mesajın Body'sinde OK döner. İstek başarısız olduğunda ise ilgili HTTP Status kodu
    ile mesajın Body'sinde hata mesajı döner.

    Args:
        id (int):
        salutation (str | Unset):
        name (str | Unset):
        surname (str | Unset):
        tckn (str | Unset):
        description (str | Unset):
        phone (str | Unset):
        phone1 (str | Unset):
        email (str | Unset):
        title (str | Unset):
        phone2 (str | Unset):
        fax (str | Unset):
        gender (str | Unset):
        birthday (str | Unset):
        birthday_sms (bool | Unset):
        weddingday (str | Unset):
        weddingday_sms (bool | Unset):
        address (str | Unset):
        note1 (str | Unset):
        note2 (str | Unset):
        note3 (str | Unset):
        note4 (str | Unset):
        company_name (str | Unset):
        monthly_sms_day (int | Unset):
        monthly_sms_message (str | Unset):
        group_ids (list[int] | Unset):

    Raises:
        errors.UnexpectedStatus: If the server returns an undocumented status code and Client.raise_on_unexpected_status is True.
        httpx.TimeoutException: If the request takes longer than Client.timeout.

    Returns:
        str
     """


    return (await asyncio_detailed(
        id=id,
client=client,
salutation=salutation,
name=name,
surname=surname,
tckn=tckn,
description=description,
phone=phone,
phone1=phone1,
email=email,
title=title,
phone2=phone2,
fax=fax,
gender=gender,
birthday=birthday,
birthday_sms=birthday_sms,
weddingday=weddingday,
weddingday_sms=weddingday_sms,
address=address,
note1=note1,
note2=note2,
note3=note3,
note4=note4,
company_name=company_name,
monthly_sms_day=monthly_sms_day,
monthly_sms_message=monthly_sms_message,
group_ids=group_ids,

    )).parsed
