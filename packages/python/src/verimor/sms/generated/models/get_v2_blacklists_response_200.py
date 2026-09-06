from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast

if TYPE_CHECKING:
  from ..models.get_v2_blacklists_response_200_records_item import GetV2BlacklistsResponse200RecordsItem





T = TypeVar("T", bound="GetV2BlacklistsResponse200")



@_attrs_define
class GetV2BlacklistsResponse200:
    """ 
        Example:
            {'total': 2, 'records': [{'created_at': '2019-11-25T11:13:24.988+03:00', 'phone': '905111111111', 'source':
                'ret_web'}, {'created_at': '2020-06-02T16:59:56.957+03:00', 'phone': '905111111112', 'source': 'oim'}]}

     """

    total: int | Unset = UNSET
    """ Kara listedeki toplam numara sayısı """
    records: list[GetV2BlacklistsResponse200RecordsItem] | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.get_v2_blacklists_response_200_records_item import GetV2BlacklistsResponse200RecordsItem # noqa: PLC0415
        total = self.total

        records: list[dict[str, Any]] | Unset = UNSET
        if not isinstance(self.records, Unset):
            records = []
            for records_item_data in self.records:
                records_item = records_item_data.to_dict()
                records.append(records_item)




        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if total is not UNSET:
            field_dict["total"] = total
        if records is not UNSET:
            field_dict["records"] = records

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.get_v2_blacklists_response_200_records_item import GetV2BlacklistsResponse200RecordsItem # noqa: PLC0415
        d = dict(src_dict)
        total = d.pop("total", UNSET)

        _records = d.pop("records", UNSET)
        records: list[GetV2BlacklistsResponse200RecordsItem] | Unset = UNSET
        if _records is not UNSET:
            records = []
            for records_item_data in _records:
                records_item = GetV2BlacklistsResponse200RecordsItem.from_dict(records_item_data)



                records.append(records_item)


        get_v2_blacklists_response_200 = cls(
            total=total,
            records=records,
        )


        get_v2_blacklists_response_200.additional_properties = d
        return get_v2_blacklists_response_200

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
