from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast
import datetime






T = TypeVar("T", bound="ListFdrsResponse200FdrsItem")



@_attrs_define
class ListFdrsResponse200FdrsItem:
    

    call_uuid: str
    """ Faksın uuid'si """
    direction: str
    """ Çağrının yönü. "Gelen", "Giden" ve "Santral içi" olarak değişebilir """
    caller_id_number: str
    """ Faks gönderen numara """
    original_destination: str
    """ Faks alan numara """
    pages_count: str
    """ Sayfa adedi """
    start_stamp: datetime.datetime
    """ Arama Zamanı """
    success: bool
    """ Durum """
    result: str
    """ Sonuç """
    local_station_header: str | Unset = UNSET
    """ Gönderen başlığı """
    transfer_rate: int | Unset = UNSET
    """ Gönderim hızı """
    answer_stamp: datetime.datetime | Unset = UNSET
    """ Cevaplama Zamanı """
    end_stamp: datetime.datetime | Unset = UNSET
    """ Kapatma Zamanı """
    duration: int | Unset = UNSET
    """ Süre """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        call_uuid = self.call_uuid

        direction = self.direction

        caller_id_number = self.caller_id_number

        original_destination = self.original_destination

        pages_count = self.pages_count

        start_stamp = self.start_stamp.isoformat()

        success = self.success

        result = self.result

        local_station_header = self.local_station_header

        transfer_rate = self.transfer_rate

        answer_stamp: str | Unset = UNSET
        if not isinstance(self.answer_stamp, Unset):
            answer_stamp = self.answer_stamp.isoformat()

        end_stamp: str | Unset = UNSET
        if not isinstance(self.end_stamp, Unset):
            end_stamp = self.end_stamp.isoformat()

        duration = self.duration


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "call_uuid": call_uuid,
            "direction": direction,
            "caller_id_number": caller_id_number,
            "original_destination": original_destination,
            "pages_count": pages_count,
            "start_stamp": start_stamp,
            "success": success,
            "result": result,
        })
        if local_station_header is not UNSET:
            field_dict["local_station_header"] = local_station_header
        if transfer_rate is not UNSET:
            field_dict["transfer_rate"] = transfer_rate
        if answer_stamp is not UNSET:
            field_dict["answer_stamp"] = answer_stamp
        if end_stamp is not UNSET:
            field_dict["end_stamp"] = end_stamp
        if duration is not UNSET:
            field_dict["duration"] = duration

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        call_uuid = d.pop("call_uuid")

        direction = d.pop("direction")

        caller_id_number = d.pop("caller_id_number")

        original_destination = d.pop("original_destination")

        pages_count = d.pop("pages_count")

        start_stamp = datetime.datetime.fromisoformat(d.pop("start_stamp"))




        success = d.pop("success")

        result = d.pop("result")

        local_station_header = d.pop("local_station_header", UNSET)

        transfer_rate = d.pop("transfer_rate", UNSET)

        _answer_stamp = d.pop("answer_stamp", UNSET)
        answer_stamp: datetime.datetime | Unset
        if isinstance(_answer_stamp,  Unset):
            answer_stamp = UNSET
        else:
            answer_stamp = datetime.datetime.fromisoformat(_answer_stamp)




        _end_stamp = d.pop("end_stamp", UNSET)
        end_stamp: datetime.datetime | Unset
        if isinstance(_end_stamp,  Unset):
            end_stamp = UNSET
        else:
            end_stamp = datetime.datetime.fromisoformat(_end_stamp)




        duration = d.pop("duration", UNSET)

        list_fdrs_response_200_fdrs_item = cls(
            call_uuid=call_uuid,
            direction=direction,
            caller_id_number=caller_id_number,
            original_destination=original_destination,
            pages_count=pages_count,
            start_stamp=start_stamp,
            success=success,
            result=result,
            local_station_header=local_station_header,
            transfer_rate=transfer_rate,
            answer_stamp=answer_stamp,
            end_stamp=end_stamp,
            duration=duration,
        )


        list_fdrs_response_200_fdrs_item.additional_properties = d
        return list_fdrs_response_200_fdrs_item

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
