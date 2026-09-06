from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast






T = TypeVar("T", bound="GetCdrResponse200Cdr")



@_attrs_define
class GetCdrResponse200Cdr:
    

    direction: str | Unset = UNSET
    """ Çağrı yönü """
    caller_id_number: str | Unset = UNSET
    """ Arayan numara """
    destination_number: str | Unset = UNSET
    """ Hedef numara """
    result: str | Unset = UNSET
    """ Çağrı sonucu """
    sip_hangup_disposition: str | Unset = UNSET
    """ SIP sonlandırma nedeni """
    missed: bool | Unset = UNSET
    """ Cevapsız çağrı mı? """
    return_uuid: str | Unset = UNSET
    """ Return UUID """
    call_uuid: str | Unset = UNSET
    """ Çağrı UUID """
    start_stamp: str | Unset = UNSET
    """ Çağrı başlangıç zamanı """
    answer_stamp: None | str | Unset = UNSET
    """ Çağrı cevaplanma zamanı """
    end_stamp: str | Unset = UNSET
    """ Çağrı bitiş zamanı """
    duration: str | Unset = UNSET
    """ Çağrı süresi (SS:dd:ss) """
    talk_duration: str | Unset = UNSET
    """ Konuşma süresi (SS:dd:ss) """
    queue_wait_seconds: str | Unset = UNSET
    """ Kuyruk bekleme süresi (SS:dd:ss) """
    recording_present: str | Unset = UNSET
    """ Kayıt durumu """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        direction = self.direction

        caller_id_number = self.caller_id_number

        destination_number = self.destination_number

        result = self.result

        sip_hangup_disposition = self.sip_hangup_disposition

        missed = self.missed

        return_uuid = self.return_uuid

        call_uuid = self.call_uuid

        start_stamp = self.start_stamp

        answer_stamp: None | str | Unset
        if isinstance(self.answer_stamp, Unset):
            answer_stamp = UNSET
        else:
            answer_stamp = self.answer_stamp

        end_stamp = self.end_stamp

        duration = self.duration

        talk_duration = self.talk_duration

        queue_wait_seconds = self.queue_wait_seconds

        recording_present = self.recording_present


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if direction is not UNSET:
            field_dict["direction"] = direction
        if caller_id_number is not UNSET:
            field_dict["caller_id_number"] = caller_id_number
        if destination_number is not UNSET:
            field_dict["destination_number"] = destination_number
        if result is not UNSET:
            field_dict["result"] = result
        if sip_hangup_disposition is not UNSET:
            field_dict["sip_hangup_disposition"] = sip_hangup_disposition
        if missed is not UNSET:
            field_dict["missed"] = missed
        if return_uuid is not UNSET:
            field_dict["return_uuid"] = return_uuid
        if call_uuid is not UNSET:
            field_dict["call_uuid"] = call_uuid
        if start_stamp is not UNSET:
            field_dict["start_stamp"] = start_stamp
        if answer_stamp is not UNSET:
            field_dict["answer_stamp"] = answer_stamp
        if end_stamp is not UNSET:
            field_dict["end_stamp"] = end_stamp
        if duration is not UNSET:
            field_dict["duration"] = duration
        if talk_duration is not UNSET:
            field_dict["talk_duration"] = talk_duration
        if queue_wait_seconds is not UNSET:
            field_dict["queue_wait_seconds"] = queue_wait_seconds
        if recording_present is not UNSET:
            field_dict["recording_present"] = recording_present

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        direction = d.pop("direction", UNSET)

        caller_id_number = d.pop("caller_id_number", UNSET)

        destination_number = d.pop("destination_number", UNSET)

        result = d.pop("result", UNSET)

        sip_hangup_disposition = d.pop("sip_hangup_disposition", UNSET)

        missed = d.pop("missed", UNSET)

        return_uuid = d.pop("return_uuid", UNSET)

        call_uuid = d.pop("call_uuid", UNSET)

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

        talk_duration = d.pop("talk_duration", UNSET)

        queue_wait_seconds = d.pop("queue_wait_seconds", UNSET)

        recording_present = d.pop("recording_present", UNSET)

        get_cdr_response_200_cdr = cls(
            direction=direction,
            caller_id_number=caller_id_number,
            destination_number=destination_number,
            result=result,
            sip_hangup_disposition=sip_hangup_disposition,
            missed=missed,
            return_uuid=return_uuid,
            call_uuid=call_uuid,
            start_stamp=start_stamp,
            answer_stamp=answer_stamp,
            end_stamp=end_stamp,
            duration=duration,
            talk_duration=talk_duration,
            queue_wait_seconds=queue_wait_seconds,
            recording_present=recording_present,
        )


        get_cdr_response_200_cdr.additional_properties = d
        return get_cdr_response_200_cdr

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
