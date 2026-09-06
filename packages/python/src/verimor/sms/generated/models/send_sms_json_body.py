from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..models.send_sms_json_body_datacoding import SendSmsJsonBodyDatacoding
from ..types import UNSET, Unset
from typing import cast

if TYPE_CHECKING:
  from ..models.send_sms_json_body_messages_item import SendSmsJsonBodyMessagesItem





T = TypeVar("T", bound="SendSmsJsonBody")



@_attrs_define
class SendSmsJsonBody:
    

    username: str
    """ API kullanıcı adı """
    password: str
    """ API şifresi """
    messages: list[SendSmsJsonBodyMessagesItem]
    source_addr: str | Unset = UNSET
    """ Gönderici başlığı """
    valid_for: str | Unset = UNSET
    """ Mesajın geçerlilik süresi. SS:DD (veya S:DD) formatında olmalı. (Varsayılan değer 24:00, Minimum değer
    00:01, Maksimum değer 48:00) """
    datacoding: SendSmsJsonBodyDatacoding | Unset = UNSET
    """ Mesaj metni için kullanılacak karakter kodlaması (0: Normal, 1: Türkçe, 2: Unicode) """
    is_commercial: bool | Unset = UNSET
    """ Ticari mesaj mı """
    iys_recipient_type: str | Unset = UNSET
    """ İYS alıcı tipi (BIREYSEL/TACIR) """
    send_at: str | Unset = UNSET
    """ Gönderim zamanı (ISO 8601 formatında). Boş ise mesaj hemen gönderilir. """
    custom_id: str | Unset = UNSET
    """ Özel kampanya ID'si """
    add_ret: bool | Unset = UNSET
    """ true ise gönderici başlığına ait ret bildirimi ('Ret: ...') her mesajın sonuna otomatik eklenir. Yalnızca bu
    (POST/JSON) yönteminde geçerlidir. """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.send_sms_json_body_messages_item import SendSmsJsonBodyMessagesItem # noqa: PLC0415
        username = self.username

        password = self.password

        messages = []
        for messages_item_data in self.messages:
            messages_item = messages_item_data.to_dict()
            messages.append(messages_item)



        source_addr = self.source_addr

        valid_for = self.valid_for

        datacoding: int | Unset = UNSET
        if not isinstance(self.datacoding, Unset):
            datacoding = self.datacoding.value


        is_commercial = self.is_commercial

        iys_recipient_type = self.iys_recipient_type

        send_at = self.send_at

        custom_id = self.custom_id

        add_ret = self.add_ret


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "username": username,
            "password": password,
            "messages": messages,
        })
        if source_addr is not UNSET:
            field_dict["source_addr"] = source_addr
        if valid_for is not UNSET:
            field_dict["valid_for"] = valid_for
        if datacoding is not UNSET:
            field_dict["datacoding"] = datacoding
        if is_commercial is not UNSET:
            field_dict["is_commercial"] = is_commercial
        if iys_recipient_type is not UNSET:
            field_dict["iys_recipient_type"] = iys_recipient_type
        if send_at is not UNSET:
            field_dict["send_at"] = send_at
        if custom_id is not UNSET:
            field_dict["custom_id"] = custom_id
        if add_ret is not UNSET:
            field_dict["add_ret"] = add_ret

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.send_sms_json_body_messages_item import SendSmsJsonBodyMessagesItem # noqa: PLC0415
        d = dict(src_dict)
        username = d.pop("username")

        password = d.pop("password")

        messages = []
        _messages = d.pop("messages")
        for messages_item_data in (_messages):
            messages_item = SendSmsJsonBodyMessagesItem.from_dict(messages_item_data)



            messages.append(messages_item)


        source_addr = d.pop("source_addr", UNSET)

        valid_for = d.pop("valid_for", UNSET)

        _datacoding = d.pop("datacoding", UNSET)
        datacoding: SendSmsJsonBodyDatacoding | Unset
        if isinstance(_datacoding,  Unset):
            datacoding = UNSET
        else:
            datacoding = SendSmsJsonBodyDatacoding(_datacoding)




        is_commercial = d.pop("is_commercial", UNSET)

        iys_recipient_type = d.pop("iys_recipient_type", UNSET)

        send_at = d.pop("send_at", UNSET)

        custom_id = d.pop("custom_id", UNSET)

        add_ret = d.pop("add_ret", UNSET)

        send_sms_json_body = cls(
            username=username,
            password=password,
            messages=messages,
            source_addr=source_addr,
            valid_for=valid_for,
            datacoding=datacoding,
            is_commercial=is_commercial,
            iys_recipient_type=iys_recipient_type,
            send_at=send_at,
            custom_id=custom_id,
            add_ret=add_ret,
        )


        send_sms_json_body.additional_properties = d
        return send_sms_json_body

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
