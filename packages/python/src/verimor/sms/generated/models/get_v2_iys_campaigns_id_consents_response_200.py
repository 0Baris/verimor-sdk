from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast

if TYPE_CHECKING:
  from ..models.get_v2_iys_campaigns_id_consents_response_200_records_item import GetV2IysCampaignsIdConsentsResponse200RecordsItem





T = TypeVar("T", bound="GetV2IysCampaignsIdConsentsResponse200")



@_attrs_define
class GetV2IysCampaignsIdConsentsResponse200:
    """ 
        Example:
            {'total': 2, 'source_addr': 'BASLIGIM', 'status': 'Tamamlandı', 'records': [{'type': 'MESAJ', 'source':
                'HS_WEB', 'recipient': '905111111114', 'status': 'ONAY', 'consent_date': '2020-06-11T22:14:00.000+03:00',
                'recipient_type': 'BIREYSEL', 'request_status': 'Başarılı'}, {'type': 'MESAJ', 'source': 'HS_WEB', 'recipient':
                '905111111111', 'status': 'RET', 'consent_date': '2020-06-11T22:14:00.000+03:00', 'recipient_type': 'BIREYSEL',
                'request_status': 'Başarısız', 'request_error': 'H175 İlk defa kaydedilen bir iznin durum (status) bilgisi RET
                olmamalıdır.'}]}

     """

    total: int
    source_addr: str
    status: str
    records: list[GetV2IysCampaignsIdConsentsResponse200RecordsItem]
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.get_v2_iys_campaigns_id_consents_response_200_records_item import GetV2IysCampaignsIdConsentsResponse200RecordsItem # noqa: PLC0415
        total = self.total

        source_addr = self.source_addr

        status = self.status

        records = []
        for records_item_data in self.records:
            records_item = records_item_data.to_dict()
            records.append(records_item)




        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "total": total,
            "source_addr": source_addr,
            "status": status,
            "records": records,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.get_v2_iys_campaigns_id_consents_response_200_records_item import GetV2IysCampaignsIdConsentsResponse200RecordsItem # noqa: PLC0415
        d = dict(src_dict)
        total = d.pop("total")

        source_addr = d.pop("source_addr")

        status = d.pop("status")

        records = []
        _records = d.pop("records")
        for records_item_data in (_records):
            records_item = GetV2IysCampaignsIdConsentsResponse200RecordsItem.from_dict(records_item_data)



            records.append(records_item)


        get_v2_iys_campaigns_id_consents_response_200 = cls(
            total=total,
            source_addr=source_addr,
            status=status,
            records=records,
        )


        get_v2_iys_campaigns_id_consents_response_200.additional_properties = d
        return get_v2_iys_campaigns_id_consents_response_200

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
