from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast
import datetime






T = TypeVar("T", bound="GetV2IysCampaignsResponse200RecordsItem")



@_attrs_define
class GetV2IysCampaignsResponse200RecordsItem:
    

    id: int | Unset = UNSET
    header_name: str | Unset = UNSET
    iys_code: int | Unset = UNSET
    iys_brand_code: int | Unset = UNSET
    source: str | Unset = UNSET
    created_at: datetime.datetime | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        id = self.id

        header_name = self.header_name

        iys_code = self.iys_code

        iys_brand_code = self.iys_brand_code

        source = self.source

        created_at: str | Unset = UNSET
        if not isinstance(self.created_at, Unset):
            created_at = self.created_at.isoformat()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if id is not UNSET:
            field_dict["id"] = id
        if header_name is not UNSET:
            field_dict["header_name"] = header_name
        if iys_code is not UNSET:
            field_dict["iys_code"] = iys_code
        if iys_brand_code is not UNSET:
            field_dict["iys_brand_code"] = iys_brand_code
        if source is not UNSET:
            field_dict["source"] = source
        if created_at is not UNSET:
            field_dict["created_at"] = created_at

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        id = d.pop("id", UNSET)

        header_name = d.pop("header_name", UNSET)

        iys_code = d.pop("iys_code", UNSET)

        iys_brand_code = d.pop("iys_brand_code", UNSET)

        source = d.pop("source", UNSET)

        _created_at = d.pop("created_at", UNSET)
        created_at: datetime.datetime | Unset
        if isinstance(_created_at,  Unset):
            created_at = UNSET
        else:
            created_at = datetime.datetime.fromisoformat(_created_at)




        get_v2_iys_campaigns_response_200_records_item = cls(
            id=id,
            header_name=header_name,
            iys_code=iys_code,
            iys_brand_code=iys_brand_code,
            source=source,
            created_at=created_at,
        )


        get_v2_iys_campaigns_response_200_records_item.additional_properties = d
        return get_v2_iys_campaigns_response_200_records_item

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
