from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast
import datetime






T = TypeVar("T", bound="ListFaxOrdersResponse200FaxOrdersItem")



@_attrs_define
class ListFaxOrdersResponse200FaxOrdersItem:
    

    id: int
    """ Kayıt NO """
    created_at: datetime.datetime
    """ Kayıt zamanı """
    local_station_id: str
    """ Arayan numara """
    remote_station_id: str
    """ Aranan numara """
    status: str
    """ Sonuç """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        id = self.id

        created_at = self.created_at.isoformat()

        local_station_id = self.local_station_id

        remote_station_id = self.remote_station_id

        status = self.status


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "id": id,
            "created_at": created_at,
            "local_station_id": local_station_id,
            "remote_station_id": remote_station_id,
            "status": status,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        id = d.pop("id")

        created_at = datetime.datetime.fromisoformat(d.pop("created_at"))




        local_station_id = d.pop("local_station_id")

        remote_station_id = d.pop("remote_station_id")

        status = d.pop("status")

        list_fax_orders_response_200_fax_orders_item = cls(
            id=id,
            created_at=created_at,
            local_station_id=local_station_id,
            remote_station_id=remote_station_id,
            status=status,
        )


        list_fax_orders_response_200_fax_orders_item.additional_properties = d
        return list_fax_orders_response_200_fax_orders_item

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
