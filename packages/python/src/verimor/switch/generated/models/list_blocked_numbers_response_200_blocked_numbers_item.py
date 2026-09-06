from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="ListBlockedNumbersResponse200BlockedNumbersItem")



@_attrs_define
class ListBlockedNumbersResponse200BlockedNumbersItem:
    

    id: int
    """ Engelli numara kaydının benzersiz kimlik numarası """
    number: str
    """ Normalize edilmiş engelli telefon numarası """
    direction: str | Unset = UNSET
    """ Engelleme yönü (inbound veya outbound) """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        id = self.id

        number = self.number

        direction = self.direction


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "id": id,
            "number": number,
        })
        if direction is not UNSET:
            field_dict["direction"] = direction

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        id = d.pop("id")

        number = d.pop("number")

        direction = d.pop("direction", UNSET)

        list_blocked_numbers_response_200_blocked_numbers_item = cls(
            id=id,
            number=number,
            direction=direction,
        )


        list_blocked_numbers_response_200_blocked_numbers_item.additional_properties = d
        return list_blocked_numbers_response_200_blocked_numbers_item

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
