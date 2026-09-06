from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast
import datetime






T = TypeVar("T", bound="GetV2IysCampaignsIdConsentsResponse200RecordsItem")



@_attrs_define
class GetV2IysCampaignsIdConsentsResponse200RecordsItem:
    

    type_: str | Unset = UNSET
    source: str | Unset = UNSET
    recipient: str | Unset = UNSET
    status: str | Unset = UNSET
    consent_date: datetime.datetime | Unset = UNSET
    recipient_type: str | Unset = UNSET
    request_status: str | Unset = UNSET
    request_error: None | str | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        type_ = self.type_

        source = self.source

        recipient = self.recipient

        status = self.status

        consent_date: str | Unset = UNSET
        if not isinstance(self.consent_date, Unset):
            consent_date = self.consent_date.isoformat()

        recipient_type = self.recipient_type

        request_status = self.request_status

        request_error: None | str | Unset
        if isinstance(self.request_error, Unset):
            request_error = UNSET
        else:
            request_error = self.request_error


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if type_ is not UNSET:
            field_dict["type"] = type_
        if source is not UNSET:
            field_dict["source"] = source
        if recipient is not UNSET:
            field_dict["recipient"] = recipient
        if status is not UNSET:
            field_dict["status"] = status
        if consent_date is not UNSET:
            field_dict["consent_date"] = consent_date
        if recipient_type is not UNSET:
            field_dict["recipient_type"] = recipient_type
        if request_status is not UNSET:
            field_dict["request_status"] = request_status
        if request_error is not UNSET:
            field_dict["request_error"] = request_error

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        type_ = d.pop("type", UNSET)

        source = d.pop("source", UNSET)

        recipient = d.pop("recipient", UNSET)

        status = d.pop("status", UNSET)

        _consent_date = d.pop("consent_date", UNSET)
        consent_date: datetime.datetime | Unset
        if isinstance(_consent_date,  Unset):
            consent_date = UNSET
        else:
            consent_date = datetime.datetime.fromisoformat(_consent_date)




        recipient_type = d.pop("recipient_type", UNSET)

        request_status = d.pop("request_status", UNSET)

        def _parse_request_error(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast(None | str | Unset, data)

        request_error = _parse_request_error(d.pop("request_error", UNSET))


        get_v2_iys_campaigns_id_consents_response_200_records_item = cls(
            type_=type_,
            source=source,
            recipient=recipient,
            status=status,
            consent_date=consent_date,
            recipient_type=recipient_type,
            request_status=request_status,
            request_error=request_error,
        )


        get_v2_iys_campaigns_id_consents_response_200_records_item.additional_properties = d
        return get_v2_iys_campaigns_id_consents_response_200_records_item

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
