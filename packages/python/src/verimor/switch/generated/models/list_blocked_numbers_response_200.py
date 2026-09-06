from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast

if TYPE_CHECKING:
  from ..models.list_blocked_numbers_response_200_blocked_numbers_item import ListBlockedNumbersResponse200BlockedNumbersItem
  from ..models.list_blocked_numbers_response_200_pagination import ListBlockedNumbersResponse200Pagination





T = TypeVar("T", bound="ListBlockedNumbersResponse200")



@_attrs_define
class ListBlockedNumbersResponse200:
    

    blocked_numbers: list[ListBlockedNumbersResponse200BlockedNumbersItem]
    pagination: ListBlockedNumbersResponse200Pagination
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.list_blocked_numbers_response_200_blocked_numbers_item import ListBlockedNumbersResponse200BlockedNumbersItem # noqa: PLC0415
        from ..models.list_blocked_numbers_response_200_pagination import ListBlockedNumbersResponse200Pagination # noqa: PLC0415
        blocked_numbers = []
        for blocked_numbers_item_data in self.blocked_numbers:
            blocked_numbers_item = blocked_numbers_item_data.to_dict()
            blocked_numbers.append(blocked_numbers_item)



        pagination = self.pagination.to_dict()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "blocked_numbers": blocked_numbers,
            "pagination": pagination,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.list_blocked_numbers_response_200_blocked_numbers_item import ListBlockedNumbersResponse200BlockedNumbersItem # noqa: PLC0415
        from ..models.list_blocked_numbers_response_200_pagination import ListBlockedNumbersResponse200Pagination # noqa: PLC0415
        d = dict(src_dict)
        blocked_numbers = []
        _blocked_numbers = d.pop("blocked_numbers")
        for blocked_numbers_item_data in (_blocked_numbers):
            blocked_numbers_item = ListBlockedNumbersResponse200BlockedNumbersItem.from_dict(blocked_numbers_item_data)



            blocked_numbers.append(blocked_numbers_item)


        pagination = ListBlockedNumbersResponse200Pagination.from_dict(d.pop("pagination"))




        list_blocked_numbers_response_200 = cls(
            blocked_numbers=blocked_numbers,
            pagination=pagination,
        )


        list_blocked_numbers_response_200.additional_properties = d
        return list_blocked_numbers_response_200

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
