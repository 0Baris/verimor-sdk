from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="WebhookPayloadExamplesResponse200RingingEvent")



@_attrs_define
class WebhookPayloadExamplesResponse200RingingEvent:
    """ Çağrı çalmaya başladığında gönderilen payload

     """

    event: str | Unset = UNSET
    call_id: str | Unset = UNSET
    caller_number: str | Unset = UNSET
    called_number: str | Unset = UNSET
    timestamp: str | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        event = self.event

        call_id = self.call_id

        caller_number = self.caller_number

        called_number = self.called_number

        timestamp = self.timestamp


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if event is not UNSET:
            field_dict["event"] = event
        if call_id is not UNSET:
            field_dict["call_id"] = call_id
        if caller_number is not UNSET:
            field_dict["caller_number"] = caller_number
        if called_number is not UNSET:
            field_dict["called_number"] = called_number
        if timestamp is not UNSET:
            field_dict["timestamp"] = timestamp

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        event = d.pop("event", UNSET)

        call_id = d.pop("call_id", UNSET)

        caller_number = d.pop("caller_number", UNSET)

        called_number = d.pop("called_number", UNSET)

        timestamp = d.pop("timestamp", UNSET)

        webhook_payload_examples_response_200_ringing_event = cls(
            event=event,
            call_id=call_id,
            caller_number=caller_number,
            called_number=called_number,
            timestamp=timestamp,
        )


        webhook_payload_examples_response_200_ringing_event.additional_properties = d
        return webhook_payload_examples_response_200_ringing_event

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
