from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast
import datetime






T = TypeVar("T", bound="GetV2BlacklistsResponse200RecordsItem")



@_attrs_define
class GetV2BlacklistsResponse200RecordsItem:
    

    phone: str | Unset = UNSET
    """ Kara listeye alınmış numara """
    source: str | Unset = UNSET
    """ Kaynak """
    created_at: datetime.datetime | Unset = UNSET
    """ Kara listeye eklenme tarih saati """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        phone = self.phone

        source = self.source

        created_at: str | Unset = UNSET
        if not isinstance(self.created_at, Unset):
            created_at = self.created_at.isoformat()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if phone is not UNSET:
            field_dict["phone"] = phone
        if source is not UNSET:
            field_dict["source"] = source
        if created_at is not UNSET:
            field_dict["created_at"] = created_at

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        phone = d.pop("phone", UNSET)

        source = d.pop("source", UNSET)

        _created_at = d.pop("created_at", UNSET)
        created_at: datetime.datetime | Unset
        if isinstance(_created_at,  Unset):
            created_at = UNSET
        else:
            created_at = datetime.datetime.fromisoformat(_created_at)




        get_v2_blacklists_response_200_records_item = cls(
            phone=phone,
            source=source,
            created_at=created_at,
        )


        get_v2_blacklists_response_200_records_item.additional_properties = d
        return get_v2_blacklists_response_200_records_item

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
