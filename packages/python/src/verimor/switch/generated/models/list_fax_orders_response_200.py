from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast

if TYPE_CHECKING:
  from ..models.list_fax_orders_response_200_fax_orders_item import ListFaxOrdersResponse200FaxOrdersItem
  from ..models.list_fax_orders_response_200_pagination import ListFaxOrdersResponse200Pagination





T = TypeVar("T", bound="ListFaxOrdersResponse200")



@_attrs_define
class ListFaxOrdersResponse200:
    

    fax_orders: list[ListFaxOrdersResponse200FaxOrdersItem]
    pagination: ListFaxOrdersResponse200Pagination
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.list_fax_orders_response_200_fax_orders_item import ListFaxOrdersResponse200FaxOrdersItem # noqa: PLC0415
        from ..models.list_fax_orders_response_200_pagination import ListFaxOrdersResponse200Pagination # noqa: PLC0415
        fax_orders = []
        for fax_orders_item_data in self.fax_orders:
            fax_orders_item = fax_orders_item_data.to_dict()
            fax_orders.append(fax_orders_item)



        pagination = self.pagination.to_dict()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "fax_orders": fax_orders,
            "pagination": pagination,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.list_fax_orders_response_200_fax_orders_item import ListFaxOrdersResponse200FaxOrdersItem # noqa: PLC0415
        from ..models.list_fax_orders_response_200_pagination import ListFaxOrdersResponse200Pagination # noqa: PLC0415
        d = dict(src_dict)
        fax_orders = []
        _fax_orders = d.pop("fax_orders")
        for fax_orders_item_data in (_fax_orders):
            fax_orders_item = ListFaxOrdersResponse200FaxOrdersItem.from_dict(fax_orders_item_data)



            fax_orders.append(fax_orders_item)


        pagination = ListFaxOrdersResponse200Pagination.from_dict(d.pop("pagination"))




        list_fax_orders_response_200 = cls(
            fax_orders=fax_orders,
            pagination=pagination,
        )


        list_fax_orders_response_200.additional_properties = d
        return list_fax_orders_response_200

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
