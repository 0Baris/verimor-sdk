from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="GetCdrsResponse200Pagination")



@_attrs_define
class GetCdrsResponse200Pagination:
    

    page: int | Unset = UNSET
    """ Mevcut sayfa numarası """
    total_count: int | Unset = UNSET
    """ Toplam kayıt sayısı """
    total_pages: int | Unset = UNSET
    """ Toplam sayfa sayısı """
    limit: int | Unset = UNSET
    """ Sayfa başına kayıt sayısı """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        page = self.page

        total_count = self.total_count

        total_pages = self.total_pages

        limit = self.limit


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if page is not UNSET:
            field_dict["page"] = page
        if total_count is not UNSET:
            field_dict["total_count"] = total_count
        if total_pages is not UNSET:
            field_dict["total_pages"] = total_pages
        if limit is not UNSET:
            field_dict["limit"] = limit

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        page = d.pop("page", UNSET)

        total_count = d.pop("total_count", UNSET)

        total_pages = d.pop("total_pages", UNSET)

        limit = d.pop("limit", UNSET)

        get_cdrs_response_200_pagination = cls(
            page=page,
            total_count=total_count,
            total_pages=total_pages,
            limit=limit,
        )


        get_cdrs_response_200_pagination.additional_properties = d
        return get_cdrs_response_200_pagination

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
