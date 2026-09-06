from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast

if TYPE_CHECKING:
  from ..models.get_cdrs_response_200_cdrs_item import GetCdrsResponse200CdrsItem
  from ..models.get_cdrs_response_200_pagination import GetCdrsResponse200Pagination





T = TypeVar("T", bound="GetCdrsResponse200")



@_attrs_define
class GetCdrsResponse200:
    

    cdrs: list[GetCdrsResponse200CdrsItem] | Unset = UNSET
    pagination: GetCdrsResponse200Pagination | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.get_cdrs_response_200_cdrs_item import GetCdrsResponse200CdrsItem # noqa: PLC0415
        from ..models.get_cdrs_response_200_pagination import GetCdrsResponse200Pagination # noqa: PLC0415
        cdrs: list[dict[str, Any]] | Unset = UNSET
        if not isinstance(self.cdrs, Unset):
            cdrs = []
            for cdrs_item_data in self.cdrs:
                cdrs_item = cdrs_item_data.to_dict()
                cdrs.append(cdrs_item)



        pagination: dict[str, Any] | Unset = UNSET
        if not isinstance(self.pagination, Unset):
            pagination = self.pagination.to_dict()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if cdrs is not UNSET:
            field_dict["cdrs"] = cdrs
        if pagination is not UNSET:
            field_dict["pagination"] = pagination

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.get_cdrs_response_200_cdrs_item import GetCdrsResponse200CdrsItem # noqa: PLC0415
        from ..models.get_cdrs_response_200_pagination import GetCdrsResponse200Pagination # noqa: PLC0415
        d = dict(src_dict)
        _cdrs = d.pop("cdrs", UNSET)
        cdrs: list[GetCdrsResponse200CdrsItem] | Unset = UNSET
        if _cdrs is not UNSET:
            cdrs = []
            for cdrs_item_data in _cdrs:
                cdrs_item = GetCdrsResponse200CdrsItem.from_dict(cdrs_item_data)



                cdrs.append(cdrs_item)


        _pagination = d.pop("pagination", UNSET)
        pagination: GetCdrsResponse200Pagination | Unset
        if isinstance(_pagination,  Unset):
            pagination = UNSET
        else:
            pagination = GetCdrsResponse200Pagination.from_dict(_pagination)




        get_cdrs_response_200 = cls(
            cdrs=cdrs,
            pagination=pagination,
        )


        get_cdrs_response_200.additional_properties = d
        return get_cdrs_response_200

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
