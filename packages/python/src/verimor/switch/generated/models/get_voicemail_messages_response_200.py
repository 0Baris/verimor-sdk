from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast

if TYPE_CHECKING:
  from ..models.get_voicemail_messages_response_200_messages_item import GetVoicemailMessagesResponse200MessagesItem
  from ..models.get_voicemail_messages_response_200_pagination import GetVoicemailMessagesResponse200Pagination





T = TypeVar("T", bound="GetVoicemailMessagesResponse200")



@_attrs_define
class GetVoicemailMessagesResponse200:
    

    messages: list[GetVoicemailMessagesResponse200MessagesItem]
    pagination: GetVoicemailMessagesResponse200Pagination
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.get_voicemail_messages_response_200_messages_item import GetVoicemailMessagesResponse200MessagesItem # noqa: PLC0415
        from ..models.get_voicemail_messages_response_200_pagination import GetVoicemailMessagesResponse200Pagination # noqa: PLC0415
        messages = []
        for messages_item_data in self.messages:
            messages_item = messages_item_data.to_dict()
            messages.append(messages_item)



        pagination = self.pagination.to_dict()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "messages": messages,
            "pagination": pagination,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.get_voicemail_messages_response_200_messages_item import GetVoicemailMessagesResponse200MessagesItem # noqa: PLC0415
        from ..models.get_voicemail_messages_response_200_pagination import GetVoicemailMessagesResponse200Pagination # noqa: PLC0415
        d = dict(src_dict)
        messages = []
        _messages = d.pop("messages")
        for messages_item_data in (_messages):
            messages_item = GetVoicemailMessagesResponse200MessagesItem.from_dict(messages_item_data)



            messages.append(messages_item)


        pagination = GetVoicemailMessagesResponse200Pagination.from_dict(d.pop("pagination"))




        get_voicemail_messages_response_200 = cls(
            messages=messages,
            pagination=pagination,
        )


        get_voicemail_messages_response_200.additional_properties = d
        return get_voicemail_messages_response_200

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
