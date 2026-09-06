from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="OriginateCallPostJsonBody")



@_attrs_define
class OriginateCallPostJsonBody:
    

    extension: str
    """ Aramanın bağlanacağı dahili numaradır. """
    destination: str
    """ Aranacak olan numara (yurtiçi çağrılar için 908505320000, yurtdışı çağrılar için 00493027590915 formatında
    olmalı). """
    caller_id: str | Unset = UNSET
    """ Aramada kullanılacak olan dış numara (908505320000 formatında olmalı. Bu parametre verilmezse dahilide
    seçili olan dış no kullanılacaktır). """
    manual_answer: bool | Unset = UNSET
    """ Değeri true olarak gönderilirse dahilinin telefonu açmasını bekler (Normalde otomatik olarak dahili açılır
    ve karşı numara aranır). """
    timeout: int | Unset = UNSET
    """ Telefon çaldırma süresidir. 10 ile 60 sn. arasında bir değer olmalı. Varsayılan 29'dur. """
    announcement_to_caller: int | Unset = UNSET
    """ Cevaplanma anında arayan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem
    Merkezi üzerinden görebilirsiniz. """
    announcement_to_callee: int | Unset = UNSET
    """ Cevaplanma anında aranan tarafa dinletilecek anons. Ses dosyası ID'lerinizi API ile veya Online İşlem
    Merkezi üzerinden görebilirsiniz. """
    custom_call_type: str | Unset = UNSET
    """ Opsiyonel, özel çağrı tipi etiketi. Çağrıyı kendi entegrasyonunuzda sınıflandırmak için serbest metin olarak
    gönderebilirsiniz. """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        extension = self.extension

        destination = self.destination

        caller_id = self.caller_id

        manual_answer = self.manual_answer

        timeout = self.timeout

        announcement_to_caller = self.announcement_to_caller

        announcement_to_callee = self.announcement_to_callee

        custom_call_type = self.custom_call_type


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "extension": extension,
            "destination": destination,
        })
        if caller_id is not UNSET:
            field_dict["caller_id"] = caller_id
        if manual_answer is not UNSET:
            field_dict["manual_answer"] = manual_answer
        if timeout is not UNSET:
            field_dict["timeout"] = timeout
        if announcement_to_caller is not UNSET:
            field_dict["announcement_to_caller"] = announcement_to_caller
        if announcement_to_callee is not UNSET:
            field_dict["announcement_to_callee"] = announcement_to_callee
        if custom_call_type is not UNSET:
            field_dict["custom_call_type"] = custom_call_type

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        extension = d.pop("extension")

        destination = d.pop("destination")

        caller_id = d.pop("caller_id", UNSET)

        manual_answer = d.pop("manual_answer", UNSET)

        timeout = d.pop("timeout", UNSET)

        announcement_to_caller = d.pop("announcement_to_caller", UNSET)

        announcement_to_callee = d.pop("announcement_to_callee", UNSET)

        custom_call_type = d.pop("custom_call_type", UNSET)

        originate_call_post_json_body = cls(
            extension=extension,
            destination=destination,
            caller_id=caller_id,
            manual_answer=manual_answer,
            timeout=timeout,
            announcement_to_caller=announcement_to_caller,
            announcement_to_callee=announcement_to_callee,
            custom_call_type=custom_call_type,
        )


        originate_call_post_json_body.additional_properties = d
        return originate_call_post_json_body

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
