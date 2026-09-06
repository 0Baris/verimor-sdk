from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast

if TYPE_CHECKING:
  from ..models.list_contacts_response_200_contacts_item import ListContactsResponse200ContactsItem
  from ..models.list_contacts_response_200_pagination import ListContactsResponse200Pagination





T = TypeVar("T", bound="ListContactsResponse200")



@_attrs_define
class ListContactsResponse200:
    

    contacts: list[ListContactsResponse200ContactsItem]
    pagination: ListContactsResponse200Pagination
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.list_contacts_response_200_contacts_item import ListContactsResponse200ContactsItem # noqa: PLC0415
        from ..models.list_contacts_response_200_pagination import ListContactsResponse200Pagination # noqa: PLC0415
        contacts = []
        for contacts_item_data in self.contacts:
            contacts_item = contacts_item_data.to_dict()
            contacts.append(contacts_item)



        pagination = self.pagination.to_dict()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "contacts": contacts,
            "pagination": pagination,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.list_contacts_response_200_contacts_item import ListContactsResponse200ContactsItem # noqa: PLC0415
        from ..models.list_contacts_response_200_pagination import ListContactsResponse200Pagination # noqa: PLC0415
        d = dict(src_dict)
        contacts = []
        _contacts = d.pop("contacts")
        for contacts_item_data in (_contacts):
            contacts_item = ListContactsResponse200ContactsItem.from_dict(contacts_item_data)



            contacts.append(contacts_item)


        pagination = ListContactsResponse200Pagination.from_dict(d.pop("pagination"))




        list_contacts_response_200 = cls(
            contacts=contacts,
            pagination=pagination,
        )


        list_contacts_response_200.additional_properties = d
        return list_contacts_response_200

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
