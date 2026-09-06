from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast






T = TypeVar("T", bound="GetCdrResponse200CallFlowItem")



@_attrs_define
class GetCdrResponse200CallFlowItem:
    

    destination_number: str | Unset = UNSET
    """ Bu bacak için hedef numara """
    start_stamp: str | Unset = UNSET
    """ Bu bacak için başlangıç zamanı """
    answer_stamp: None | str | Unset = UNSET
    """ Bu bacak için cevaplanma zamanı """
    end_stamp: str | Unset = UNSET
    """ Bu bacak için bitiş zamanı """
    duration: str | Unset = UNSET
    """ Bu bacak için süre (SS:dd:ss) """
    ip_address: str | Unset = UNSET
    """ Kullanılan IP adresi """
    sip_user_agent: str | Unset = UNSET
    """ SIP User Agent """
    write_codec: str | Unset = UNSET
    """ Yazma codec'i """
    read_codec: str | Unset = UNSET
    """ Okuma codec'i """
    result: str | Unset = UNSET
    """ Bu bacak için sonuç """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        destination_number = self.destination_number

        start_stamp = self.start_stamp

        answer_stamp: None | str | Unset
        if isinstance(self.answer_stamp, Unset):
            answer_stamp = UNSET
        else:
            answer_stamp = self.answer_stamp

        end_stamp = self.end_stamp

        duration = self.duration

        ip_address = self.ip_address

        sip_user_agent = self.sip_user_agent

        write_codec = self.write_codec

        read_codec = self.read_codec

        result = self.result


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if destination_number is not UNSET:
            field_dict["destination_number"] = destination_number
        if start_stamp is not UNSET:
            field_dict["start_stamp"] = start_stamp
        if answer_stamp is not UNSET:
            field_dict["answer_stamp"] = answer_stamp
        if end_stamp is not UNSET:
            field_dict["end_stamp"] = end_stamp
        if duration is not UNSET:
            field_dict["duration"] = duration
        if ip_address is not UNSET:
            field_dict["ip_address"] = ip_address
        if sip_user_agent is not UNSET:
            field_dict["sip_user_agent"] = sip_user_agent
        if write_codec is not UNSET:
            field_dict["write_codec"] = write_codec
        if read_codec is not UNSET:
            field_dict["read_codec"] = read_codec
        if result is not UNSET:
            field_dict["result"] = result

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        destination_number = d.pop("destination_number", UNSET)

        start_stamp = d.pop("start_stamp", UNSET)

        def _parse_answer_stamp(data: object) -> None | str | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            return cast(None | str | Unset, data)

        answer_stamp = _parse_answer_stamp(d.pop("answer_stamp", UNSET))


        end_stamp = d.pop("end_stamp", UNSET)

        duration = d.pop("duration", UNSET)

        ip_address = d.pop("ip_address", UNSET)

        sip_user_agent = d.pop("sip_user_agent", UNSET)

        write_codec = d.pop("write_codec", UNSET)

        read_codec = d.pop("read_codec", UNSET)

        result = d.pop("result", UNSET)

        get_cdr_response_200_call_flow_item = cls(
            destination_number=destination_number,
            start_stamp=start_stamp,
            answer_stamp=answer_stamp,
            end_stamp=end_stamp,
            duration=duration,
            ip_address=ip_address,
            sip_user_agent=sip_user_agent,
            write_codec=write_codec,
            read_codec=read_codec,
            result=result,
        )


        get_cdr_response_200_call_flow_item.additional_properties = d
        return get_cdr_response_200_call_flow_item

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
