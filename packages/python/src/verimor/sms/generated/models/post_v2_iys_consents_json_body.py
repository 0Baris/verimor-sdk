from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from typing import cast

if TYPE_CHECKING:
  from ..models.post_v2_iys_consents_json_body_consents_item import PostV2IysConsentsJsonBodyConsentsItem





T = TypeVar("T", bound="PostV2IysConsentsJsonBody")



@_attrs_define
class PostV2IysConsentsJsonBody:
    """ 
        Example:
            {'username': '908501234567', 'password': 'xxxxxxx', 'source_addr': 'BASLIGIM', 'consents': [{'type': 'MESAJ',
                'source': 'HS_WEB', 'status': 'ONAY', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30',
                'recipient': '905111111111'}, {'type': 'ARAMA', 'source': 'HS_MESAJ', 'status': 'RET', 'recipient_type':
                'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient': '905111111112'}, {'type': 'EPOSTA', 'source':
                'HS_MESAJ', 'status': 'RET', 'recipient_type': 'BIREYSEL', 'consent_date': '2022-04-14 13:30:30', 'recipient':
                'arge@verimor.com.tr'}]}

     """

    username: str
    """ Kullanıcı Adı """
    password: str
    """ Şifre """
    source_addr: str
    """ Başlık """
    consents: list[PostV2IysConsentsJsonBodyConsentsItem]
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.post_v2_iys_consents_json_body_consents_item import PostV2IysConsentsJsonBodyConsentsItem # noqa: PLC0415
        username = self.username

        password = self.password

        source_addr = self.source_addr

        consents = []
        for consents_item_data in self.consents:
            consents_item = consents_item_data.to_dict()
            consents.append(consents_item)




        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "username": username,
            "password": password,
            "source_addr": source_addr,
            "consents": consents,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.post_v2_iys_consents_json_body_consents_item import PostV2IysConsentsJsonBodyConsentsItem # noqa: PLC0415
        d = dict(src_dict)
        username = d.pop("username")

        password = d.pop("password")

        source_addr = d.pop("source_addr")

        consents = []
        _consents = d.pop("consents")
        for consents_item_data in (_consents):
            consents_item = PostV2IysConsentsJsonBodyConsentsItem.from_dict(consents_item_data)



            consents.append(consents_item)


        post_v2_iys_consents_json_body = cls(
            username=username,
            password=password,
            source_addr=source_addr,
            consents=consents,
        )


        post_v2_iys_consents_json_body.additional_properties = d
        return post_v2_iys_consents_json_body

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
