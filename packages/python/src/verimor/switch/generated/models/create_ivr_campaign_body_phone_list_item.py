from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="CreateIvrCampaignBodyPhoneListItem")



@_attrs_define
class CreateIvrCampaignBodyPhoneListItem:
    

    phone: str | Unset = UNSET
    """ Aranacak numara. """
    phrase: str | Unset = UNSET
    """ Bu numaraya okunacak özel mesaj. """
    lang: str | Unset = UNSET
    """ Mesajın dili. Gönderilmediği durumda varsayılan olarak "tr-TR" kabul edilir. """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        phone = self.phone

        phrase = self.phrase

        lang = self.lang


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if phone is not UNSET:
            field_dict["phone"] = phone
        if phrase is not UNSET:
            field_dict["phrase"] = phrase
        if lang is not UNSET:
            field_dict["lang"] = lang

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        phone = d.pop("phone", UNSET)

        phrase = d.pop("phrase", UNSET)

        lang = d.pop("lang", UNSET)

        create_ivr_campaign_body_phone_list_item = cls(
            phone=phone,
            phrase=phrase,
            lang=lang,
        )


        create_ivr_campaign_body_phone_list_item.additional_properties = d
        return create_ivr_campaign_body_phone_list_item

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
