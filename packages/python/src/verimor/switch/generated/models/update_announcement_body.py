from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="UpdateAnnouncementBody")



@_attrs_define
class UpdateAnnouncementBody:
    

    name: str | Unset = UNSET
    """ Ses dosyasının yeni adı (opsiyonel) """
    sounddata: str | Unset = UNSET
    """ Ses dosyasının yeni içeriği, base64 ile kodlanmış olarak (opsiyonel) """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        name = self.name

        sounddata = self.sounddata


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if name is not UNSET:
            field_dict["name"] = name
        if sounddata is not UNSET:
            field_dict["sounddata"] = sounddata

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        name = d.pop("name", UNSET)

        sounddata = d.pop("sounddata", UNSET)

        update_announcement_body = cls(
            name=name,
            sounddata=sounddata,
        )


        update_announcement_body.additional_properties = d
        return update_announcement_body

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
