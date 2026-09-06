from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast

if TYPE_CHECKING:
  from ..models.list_fdrs_response_200_fdrs_item import ListFdrsResponse200FdrsItem
  from ..models.list_fdrs_response_200_pagination import ListFdrsResponse200Pagination





T = TypeVar("T", bound="ListFdrsResponse200")



@_attrs_define
class ListFdrsResponse200:
    

    fdrs: list[ListFdrsResponse200FdrsItem]
    pagination: ListFdrsResponse200Pagination
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.list_fdrs_response_200_fdrs_item import ListFdrsResponse200FdrsItem # noqa: PLC0415
        from ..models.list_fdrs_response_200_pagination import ListFdrsResponse200Pagination # noqa: PLC0415
        fdrs = []
        for fdrs_item_data in self.fdrs:
            fdrs_item = fdrs_item_data.to_dict()
            fdrs.append(fdrs_item)



        pagination = self.pagination.to_dict()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "fdrs": fdrs,
            "pagination": pagination,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.list_fdrs_response_200_fdrs_item import ListFdrsResponse200FdrsItem # noqa: PLC0415
        from ..models.list_fdrs_response_200_pagination import ListFdrsResponse200Pagination # noqa: PLC0415
        d = dict(src_dict)
        fdrs = []
        _fdrs = d.pop("fdrs")
        for fdrs_item_data in (_fdrs):
            fdrs_item = ListFdrsResponse200FdrsItem.from_dict(fdrs_item_data)



            fdrs.append(fdrs_item)


        pagination = ListFdrsResponse200Pagination.from_dict(d.pop("pagination"))




        list_fdrs_response_200 = cls(
            fdrs=fdrs,
            pagination=pagination,
        )


        list_fdrs_response_200.additional_properties = d
        return list_fdrs_response_200

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
