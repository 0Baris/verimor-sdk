from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="ListExtensionsResponse200Item")



@_attrs_define
class ListExtensionsResponse200Item:
    

    number: str | Unset = UNSET
    """ Dahili numarası """
    name: str | Unset = UNSET
    """ Dahili sahibinin adı """
    dnd: bool | Unset = UNSET
    """ Rahatsız Etme (DND) modu açık mı """
    is_agent: bool | Unset = UNSET
    """ Bu dahili bir Müşteri Temsilcisi (MT) mi """
    domain: str | Unset = UNSET
    """ Dahilinin bağlı olduğu santral (domain) adı """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        number = self.number

        name = self.name

        dnd = self.dnd

        is_agent = self.is_agent

        domain = self.domain


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if number is not UNSET:
            field_dict["number"] = number
        if name is not UNSET:
            field_dict["name"] = name
        if dnd is not UNSET:
            field_dict["dnd"] = dnd
        if is_agent is not UNSET:
            field_dict["is_agent"] = is_agent
        if domain is not UNSET:
            field_dict["domain"] = domain

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        number = d.pop("number", UNSET)

        name = d.pop("name", UNSET)

        dnd = d.pop("dnd", UNSET)

        is_agent = d.pop("is_agent", UNSET)

        domain = d.pop("domain", UNSET)

        list_extensions_response_200_item = cls(
            number=number,
            name=name,
            dnd=dnd,
            is_agent=is_agent,
            domain=domain,
        )


        list_extensions_response_200_item.additional_properties = d
        return list_extensions_response_200_item

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
