from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast

if TYPE_CHECKING:
  from ..models.get_v2_iys_campaigns_response_200_records_item import GetV2IysCampaignsResponse200RecordsItem





T = TypeVar("T", bound="GetV2IysCampaignsResponse200")



@_attrs_define
class GetV2IysCampaignsResponse200:
    """ 
        Example:
            {'records': [{'id': 103, 'header_name': 'VERIMOR', 'iys_code': 627033, 'iys_brand_code': 627033, 'source':
                'iys', 'created_at': '2021-02-10T11:58:57.508+03:00'}, {'id': 104, 'header_name': 'VERIMOR', 'iys_code': 627033,
                'iys_brand_code': 627033, 'source': 'iys', 'created_at': '2021-02-10T11:59:16.895+03:00'}], 'total': 2}

     """

    records: list[GetV2IysCampaignsResponse200RecordsItem]
    total: int
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.get_v2_iys_campaigns_response_200_records_item import GetV2IysCampaignsResponse200RecordsItem # noqa: PLC0415
        records = []
        for records_item_data in self.records:
            records_item = records_item_data.to_dict()
            records.append(records_item)



        total = self.total


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "records": records,
            "total": total,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.get_v2_iys_campaigns_response_200_records_item import GetV2IysCampaignsResponse200RecordsItem # noqa: PLC0415
        d = dict(src_dict)
        records = []
        _records = d.pop("records")
        for records_item_data in (_records):
            records_item = GetV2IysCampaignsResponse200RecordsItem.from_dict(records_item_data)



            records.append(records_item)


        total = d.pop("total")

        get_v2_iys_campaigns_response_200 = cls(
            records=records,
            total=total,
        )


        get_v2_iys_campaigns_response_200.additional_properties = d
        return get_v2_iys_campaigns_response_200

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
