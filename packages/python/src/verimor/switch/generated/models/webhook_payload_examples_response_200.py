from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast

if TYPE_CHECKING:
  from ..models.webhook_payload_examples_response_200_answered_event import WebhookPayloadExamplesResponse200AnsweredEvent
  from ..models.webhook_payload_examples_response_200_hangup_event import WebhookPayloadExamplesResponse200HangupEvent
  from ..models.webhook_payload_examples_response_200_ringing_event import WebhookPayloadExamplesResponse200RingingEvent





T = TypeVar("T", bound="WebhookPayloadExamplesResponse200")



@_attrs_define
class WebhookPayloadExamplesResponse200:
    

    ringing_event: WebhookPayloadExamplesResponse200RingingEvent | Unset = UNSET
    """ Çağrı çalmaya başladığında gönderilen payload """
    answered_event: WebhookPayloadExamplesResponse200AnsweredEvent | Unset = UNSET
    """ Çağrı cevaplandığında gönderilen payload """
    hangup_event: WebhookPayloadExamplesResponse200HangupEvent | Unset = UNSET
    """ Çağrı sonlandığında gönderilen payload """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.webhook_payload_examples_response_200_answered_event import WebhookPayloadExamplesResponse200AnsweredEvent # noqa: PLC0415
        from ..models.webhook_payload_examples_response_200_hangup_event import WebhookPayloadExamplesResponse200HangupEvent # noqa: PLC0415
        from ..models.webhook_payload_examples_response_200_ringing_event import WebhookPayloadExamplesResponse200RingingEvent # noqa: PLC0415
        ringing_event: dict[str, Any] | Unset = UNSET
        if not isinstance(self.ringing_event, Unset):
            ringing_event = self.ringing_event.to_dict()

        answered_event: dict[str, Any] | Unset = UNSET
        if not isinstance(self.answered_event, Unset):
            answered_event = self.answered_event.to_dict()

        hangup_event: dict[str, Any] | Unset = UNSET
        if not isinstance(self.hangup_event, Unset):
            hangup_event = self.hangup_event.to_dict()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if ringing_event is not UNSET:
            field_dict["ringing_event"] = ringing_event
        if answered_event is not UNSET:
            field_dict["answered_event"] = answered_event
        if hangup_event is not UNSET:
            field_dict["hangup_event"] = hangup_event

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.webhook_payload_examples_response_200_answered_event import WebhookPayloadExamplesResponse200AnsweredEvent # noqa: PLC0415
        from ..models.webhook_payload_examples_response_200_hangup_event import WebhookPayloadExamplesResponse200HangupEvent # noqa: PLC0415
        from ..models.webhook_payload_examples_response_200_ringing_event import WebhookPayloadExamplesResponse200RingingEvent # noqa: PLC0415
        d = dict(src_dict)
        _ringing_event = d.pop("ringing_event", UNSET)
        ringing_event: WebhookPayloadExamplesResponse200RingingEvent | Unset
        if isinstance(_ringing_event,  Unset):
            ringing_event = UNSET
        else:
            ringing_event = WebhookPayloadExamplesResponse200RingingEvent.from_dict(_ringing_event)




        _answered_event = d.pop("answered_event", UNSET)
        answered_event: WebhookPayloadExamplesResponse200AnsweredEvent | Unset
        if isinstance(_answered_event,  Unset):
            answered_event = UNSET
        else:
            answered_event = WebhookPayloadExamplesResponse200AnsweredEvent.from_dict(_answered_event)




        _hangup_event = d.pop("hangup_event", UNSET)
        hangup_event: WebhookPayloadExamplesResponse200HangupEvent | Unset
        if isinstance(_hangup_event,  Unset):
            hangup_event = UNSET
        else:
            hangup_event = WebhookPayloadExamplesResponse200HangupEvent.from_dict(_hangup_event)




        webhook_payload_examples_response_200 = cls(
            ringing_event=ringing_event,
            answered_event=answered_event,
            hangup_event=hangup_event,
        )


        webhook_payload_examples_response_200.additional_properties = d
        return webhook_payload_examples_response_200

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
