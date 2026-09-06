from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset







T = TypeVar("T", bound="GetVoicemailMessagesResponse200MessagesItem")



@_attrs_define
class GetVoicemailMessagesResponse200MessagesItem:
    

    start_stamp: str
    """ Telesekreter mesajının bırakıldığı zaman """
    read_stamp: str
    """ Telesekreter mesajı okunduysa, okunma zamanı (OİM'den, IVR'dan veya API'den ses kaydı dinlendiği zaman) """
    user_number: str
    """ Mesajın bırakıldığı dahili numarası """
    uuid: str
    """ Bu mesajın kayıt numarası. Aynı zamanda ilgili çağrının numarasıdır, CDR kayıtlarıyla ilişkilidir """
    caller_id_name: str
    """ Mesajı bırakan kişinin ismi """
    caller_id_number: str
    """ Mesajı bırakan numara """
    duration: str
    """ Ses kaydının süresi """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        start_stamp = self.start_stamp

        read_stamp = self.read_stamp

        user_number = self.user_number

        uuid = self.uuid

        caller_id_name = self.caller_id_name

        caller_id_number = self.caller_id_number

        duration = self.duration


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "start_stamp": start_stamp,
            "read_stamp": read_stamp,
            "user_number": user_number,
            "uuid": uuid,
            "caller_id_name": caller_id_name,
            "caller_id_number": caller_id_number,
            "duration": duration,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        start_stamp = d.pop("start_stamp")

        read_stamp = d.pop("read_stamp")

        user_number = d.pop("user_number")

        uuid = d.pop("uuid")

        caller_id_name = d.pop("caller_id_name")

        caller_id_number = d.pop("caller_id_number")

        duration = d.pop("duration")

        get_voicemail_messages_response_200_messages_item = cls(
            start_stamp=start_stamp,
            read_stamp=read_stamp,
            user_number=user_number,
            uuid=uuid,
            caller_id_name=caller_id_name,
            caller_id_number=caller_id_number,
            duration=duration,
        )


        get_voicemail_messages_response_200_messages_item.additional_properties = d
        return get_voicemail_messages_response_200_messages_item

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
