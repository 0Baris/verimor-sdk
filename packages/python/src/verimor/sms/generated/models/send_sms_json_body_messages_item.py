from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="SendSmsJsonBodyMessagesItem")



@_attrs_define
class SendSmsJsonBodyMessagesItem:
    

    dest: str
    """ Hedef telefon numaraları (virgülle ayrılmış) """
    msg: str
    """ Gönderilecek mesaj """
    id: str | Unset = UNSET
    """ Mesaj özel ID'si """
    iys_recipient_type: str | Unset = UNSET
    """ Mesaj bazında İYS alıcı tipi """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        dest = self.dest

        msg = self.msg

        id = self.id

        iys_recipient_type = self.iys_recipient_type


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "dest": dest,
            "msg": msg,
        })
        if id is not UNSET:
            field_dict["id"] = id
        if iys_recipient_type is not UNSET:
            field_dict["iys_recipient_type"] = iys_recipient_type

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        dest = d.pop("dest")

        msg = d.pop("msg")

        id = d.pop("id", UNSET)

        iys_recipient_type = d.pop("iys_recipient_type", UNSET)

        send_sms_json_body_messages_item = cls(
            dest=dest,
            msg=msg,
            id=id,
            iys_recipient_type=iys_recipient_type,
        )


        send_sms_json_body_messages_item.additional_properties = d
        return send_sms_json_body_messages_item

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
