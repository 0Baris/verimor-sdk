from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast






T = TypeVar("T", bound="ListContactsResponse200ContactsItem")



@_attrs_define
class ListContactsResponse200ContactsItem:
    

    id: int
    """ ID değeri. Bu değeri kullanarak Kişi silme veya güncelleme işlemlerini gerçekleştirebilirsiniz """
    name: str
    """ Ad """
    surname: str
    """ Soyad """
    phone: str
    """ GSM numarası 1 """
    email: str
    """ E-posta adresi """
    tckn: str | Unset = UNSET
    """ TC kimlik numarası """
    description: str | Unset = UNSET
    """ Açıklama """
    phone1: str | Unset = UNSET
    """ GSM numarası 2 """
    title: str | Unset = UNSET
    """ Unvan """
    phone2: str | Unset = UNSET
    """ Ek telefon numarası """
    fax: str | Unset = UNSET
    """ Fax numarası """
    gender: str | Unset = UNSET
    """ Cinsiyet """
    birthday: str | Unset = UNSET
    """ Doğum günü """
    birthday_sms: bool | Unset = UNSET
    """ Doğum gününde otomatik mesaj gönderimi. 'true' veya 'false' döner """
    weddingday: str | Unset = UNSET
    """ Evlilik günü """
    weddingday_sms: bool | Unset = UNSET
    """ Evlilik gününde otomatik mesaj gönderimi. 'true' veya 'false' döner """
    note1: str | Unset = UNSET
    """ Kişiyle ilgili notlar """
    note2: str | Unset = UNSET
    """ Kişiyle ilgili notlar 2 """
    note3: str | Unset = UNSET
    """ Kişiyle ilgili notlar 3 """
    note4: str | Unset = UNSET
    """ Kişiyle ilgili notlar 4 """
    company_name: str | Unset = UNSET
    """ Firma adı """
    monthly_sms_day: int | Unset = UNSET
    """ Kişiye aylık otomatik SMS gönderilecek gün. 0-31 arası rakam veya 'null' döner """
    monthly_sms_message: str | Unset = UNSET
    """ Aylık SMS mesajı """
    group_ids: list[int] | Unset = UNSET
    """ Kişinin eklendiği gruplar """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        id = self.id

        name = self.name

        surname = self.surname

        phone = self.phone

        email = self.email

        tckn = self.tckn

        description = self.description

        phone1 = self.phone1

        title = self.title

        phone2 = self.phone2

        fax = self.fax

        gender = self.gender

        birthday = self.birthday

        birthday_sms = self.birthday_sms

        weddingday = self.weddingday

        weddingday_sms = self.weddingday_sms

        note1 = self.note1

        note2 = self.note2

        note3 = self.note3

        note4 = self.note4

        company_name = self.company_name

        monthly_sms_day = self.monthly_sms_day

        monthly_sms_message = self.monthly_sms_message

        group_ids: list[int] | Unset = UNSET
        if not isinstance(self.group_ids, Unset):
            group_ids = self.group_ids




        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "id": id,
            "name": name,
            "surname": surname,
            "phone": phone,
            "email": email,
        })
        if tckn is not UNSET:
            field_dict["tckn"] = tckn
        if description is not UNSET:
            field_dict["description"] = description
        if phone1 is not UNSET:
            field_dict["phone1"] = phone1
        if title is not UNSET:
            field_dict["title"] = title
        if phone2 is not UNSET:
            field_dict["phone2"] = phone2
        if fax is not UNSET:
            field_dict["fax"] = fax
        if gender is not UNSET:
            field_dict["gender"] = gender
        if birthday is not UNSET:
            field_dict["birthday"] = birthday
        if birthday_sms is not UNSET:
            field_dict["birthday_sms"] = birthday_sms
        if weddingday is not UNSET:
            field_dict["weddingday"] = weddingday
        if weddingday_sms is not UNSET:
            field_dict["weddingday_sms"] = weddingday_sms
        if note1 is not UNSET:
            field_dict["note1"] = note1
        if note2 is not UNSET:
            field_dict["note2"] = note2
        if note3 is not UNSET:
            field_dict["note3"] = note3
        if note4 is not UNSET:
            field_dict["note4"] = note4
        if company_name is not UNSET:
            field_dict["company_name"] = company_name
        if monthly_sms_day is not UNSET:
            field_dict["monthly_sms_day"] = monthly_sms_day
        if monthly_sms_message is not UNSET:
            field_dict["monthly_sms_message"] = monthly_sms_message
        if group_ids is not UNSET:
            field_dict["group_ids"] = group_ids

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        id = d.pop("id")

        name = d.pop("name")

        surname = d.pop("surname")

        phone = d.pop("phone")

        email = d.pop("email")

        tckn = d.pop("tckn", UNSET)

        description = d.pop("description", UNSET)

        phone1 = d.pop("phone1", UNSET)

        title = d.pop("title", UNSET)

        phone2 = d.pop("phone2", UNSET)

        fax = d.pop("fax", UNSET)

        gender = d.pop("gender", UNSET)

        birthday = d.pop("birthday", UNSET)

        birthday_sms = d.pop("birthday_sms", UNSET)

        weddingday = d.pop("weddingday", UNSET)

        weddingday_sms = d.pop("weddingday_sms", UNSET)

        note1 = d.pop("note1", UNSET)

        note2 = d.pop("note2", UNSET)

        note3 = d.pop("note3", UNSET)

        note4 = d.pop("note4", UNSET)

        company_name = d.pop("company_name", UNSET)

        monthly_sms_day = d.pop("monthly_sms_day", UNSET)

        monthly_sms_message = d.pop("monthly_sms_message", UNSET)

        group_ids = cast(list[int], d.pop("group_ids", UNSET))


        list_contacts_response_200_contacts_item = cls(
            id=id,
            name=name,
            surname=surname,
            phone=phone,
            email=email,
            tckn=tckn,
            description=description,
            phone1=phone1,
            title=title,
            phone2=phone2,
            fax=fax,
            gender=gender,
            birthday=birthday,
            birthday_sms=birthday_sms,
            weddingday=weddingday,
            weddingday_sms=weddingday_sms,
            note1=note1,
            note2=note2,
            note3=note3,
            note4=note4,
            company_name=company_name,
            monthly_sms_day=monthly_sms_day,
            monthly_sms_message=monthly_sms_message,
            group_ids=group_ids,
        )


        list_contacts_response_200_contacts_item.additional_properties = d
        return list_contacts_response_200_contacts_item

    @property
    def additional_keys(self) -> list[str]:
        return list(self.additional_properties.keys())

    def __getitem__(self, key: str) -> Any:
        return self.additional_properties[key]

    def __setitem__(self, key: str, value: Any) -> None:
        self.additional_properties[key] = value

    def __delitem__(self, key: str) -> None:
        del self.additional_properties[key]

    def __contains__(self, key: str) -> bool:
        return key in self.additional_properties
