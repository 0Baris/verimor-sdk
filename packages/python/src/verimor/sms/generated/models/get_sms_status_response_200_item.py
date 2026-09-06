from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast
import datetime






T = TypeVar("T", bound="GetSmsStatusResponse200Item")



@_attrs_define
class GetSmsStatusResponse200Item:
    

    campaign_id: int | Unset = UNSET
    campaign_custom_id: str | Unset = UNSET
    message_id: int | Unset = UNSET
    message_custom_id: str | Unset = UNSET
    dest: str | Unset = UNSET
    size: int | Unset = UNSET
    international_multiplier: int | Unset = UNSET
    credits_: int | Unset = UNSET
    status: str | Unset = UNSET
    gsm_error: None | str | Unset = UNSET
    sent_at: datetime.datetime | Unset = UNSET
    done_at: datetime.datetime | None | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        campaign_id = self.campaign_id

        campaign_custom_id = self.campaign_custom_id

        message_id = self.message_id

        message_custom_id = self.message_custom_id

        dest = self.dest

        size = self.size

        international_multiplier = self.international_multiplier

        credits_ = self.credits_

        status = self.status

        gsm_error: None | str | Unset
        if isinstance(self.gsm_error, Unset):
            gsm_error = UNSET
        else:
            gsm_error = self.gsm_error

        sent_at: str | Unset = UNSET
        if not isinstance(self.sent_at, Unset):
            sent_at = self.sent_at.isoformat()

        done_at: None | str | Unset
        if isinstance(self.done_at, Unset):
            done_at = UNSET
        elif isinstance(self.done_at, datetime.datetime):
            done_at = self.done_at.isoformat()
        else:
            done_at = self.done_at


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if campaign_id is not UNSET:
            field_dict["campaign_id"] = campaign_id
        if campaign_custom_id is not UNSET:
            field_dict["campaign_custom_id"] = campaign_custom_id
        if message_id is not UNSET:
            field_dict["message_id"] = message_id
        if message_custom_id is not UNSET:
            field_dict["message_custom_id"] = message_custom_id
        if dest is not UNSET:
            field_dict["dest"] = dest
        if size is not UNSET:
            field_dict["size"] = size
        if international_multiplier is not UNSET:
            field_dict["international_multiplier"] = international_multiplier
        if credits_ is not UNSET:
            field_dict["credits"] = credits_
        if status is not UNSET:
            field_dict["status"] = status
        if gsm_error is not UNSET:
            field_dict["gsm_error"] = gsm_error
        if sent_at is not UNSET:
            field_dict["sent_at"] = sent_at
        if done_at is not UNSET:
            field_dict["done_at"] = done_at

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        campaign_id = d.pop("campaign_id", UNSET)

        campaign_custom_id = d.pop("campaign_custom_id", UNSET)

        message_id = d.pop("message_id", UNSET)

        message_custom_id = d.pop("message_custom_id", UNSET)

        dest = d.pop("dest", UNSET)

        size = d.pop("size", UNSET)

        international_multiplier = d.pop("international_multiplier", UNSET)

        credits_ = d.pop("credits", UNSET)

        status = d.pop("status", UNSET)

        def _parse_gsm_error(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast(None | str | Unset, data)

        gsm_error = _parse_gsm_error(d.pop("gsm_error", UNSET))


        _sent_at = d.pop("sent_at", UNSET)
        sent_at: datetime.datetime | Unset
        if isinstance(_sent_at,  Unset):
            sent_at = UNSET
        else:
            sent_at = datetime.datetime.fromisoformat(_sent_at)




        def _parse_done_at(data: object) -> datetime.datetime | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, str):
                    raise TypeError()
                done_at_type_0 = datetime.datetime.fromisoformat(data)



                return done_at_type_0
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast(datetime.datetime | None | Unset, data)

        done_at = _parse_done_at(d.pop("done_at", UNSET))


        get_sms_status_response_200_item = cls(
            campaign_id=campaign_id,
            campaign_custom_id=campaign_custom_id,
            message_id=message_id,
            message_custom_id=message_custom_id,
            dest=dest,
            size=size,
            international_multiplier=international_multiplier,
            credits_=credits_,
            status=status,
            gsm_error=gsm_error,
            sent_at=sent_at,
            done_at=done_at,
        )


        get_sms_status_response_200_item.additional_properties = d
        return get_sms_status_response_200_item

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
