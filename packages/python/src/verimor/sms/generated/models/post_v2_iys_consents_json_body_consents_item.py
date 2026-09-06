from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast
import datetime






T = TypeVar("T", bound="PostV2IysConsentsJsonBodyConsentsItem")



@_attrs_define
class PostV2IysConsentsJsonBodyConsentsItem:
    

    type_: str
    """ İzin tipi (örn., MESAJ, ARAMA, EPOSTA) """
    source: str
    """ İzin Kaynağı (örn., HS_WEB, HS_MESAJ) """
    status: str
    """ İzin Durumu (örn., ONAY, RET) """
    recipient_type: str
    """ Alıcı Tipi (örn., BIREYSEL) """
    consent_date: datetime.datetime
    """ İzin Tarihi (örn., 2022-04-14 13:30:30) """
    recipient: str
    """ Alıcı (Telefon no veya e-posta adresi) """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        type_ = self.type_

        source = self.source

        status = self.status

        recipient_type = self.recipient_type

        consent_date = self.consent_date.isoformat()

        recipient = self.recipient


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "type": type_,
            "source": source,
            "status": status,
            "recipient_type": recipient_type,
            "consent_date": consent_date,
            "recipient": recipient,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        type_ = d.pop("type")

        source = d.pop("source")

        status = d.pop("status")

        recipient_type = d.pop("recipient_type")

        consent_date = datetime.datetime.fromisoformat(d.pop("consent_date"))




        recipient = d.pop("recipient")

        post_v2_iys_consents_json_body_consents_item = cls(
            type_=type_,
            source=source,
            status=status,
            recipient_type=recipient_type,
            consent_date=consent_date,
            recipient=recipient,
        )


        post_v2_iys_consents_json_body_consents_item.additional_properties = d
        return post_v2_iys_consents_json_body_consents_item

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
