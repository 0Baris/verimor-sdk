from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast
import datetime






T = TypeVar("T", bound="GetV2InboundMessagesResponse200Item")



@_attrs_define
class GetV2InboundMessagesResponse200Item:
    

    message_id: int | Unset = UNSET
    created_at: datetime.datetime | Unset = UNSET
    network: str | Unset = UNSET
    source_addr: str | Unset = UNSET
    destination_addr: str | Unset = UNSET
    keyword: str | Unset = UNSET
    content: str | Unset = UNSET
    received_at: datetime.datetime | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        message_id = self.message_id

        created_at: str | Unset = UNSET
        if not isinstance(self.created_at, Unset):
            created_at = self.created_at.isoformat()

        network = self.network

        source_addr = self.source_addr

        destination_addr = self.destination_addr

        keyword = self.keyword

        content = self.content

        received_at: str | Unset = UNSET
        if not isinstance(self.received_at, Unset):
            received_at = self.received_at.isoformat()


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if message_id is not UNSET:
            field_dict["message_id"] = message_id
        if created_at is not UNSET:
            field_dict["created_at"] = created_at
        if network is not UNSET:
            field_dict["network"] = network
        if source_addr is not UNSET:
            field_dict["source_addr"] = source_addr
        if destination_addr is not UNSET:
            field_dict["destination_addr"] = destination_addr
        if keyword is not UNSET:
            field_dict["keyword"] = keyword
        if content is not UNSET:
            field_dict["content"] = content
        if received_at is not UNSET:
            field_dict["received_at"] = received_at

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        message_id = d.pop("message_id", UNSET)

        _created_at = d.pop("created_at", UNSET)
        created_at: datetime.datetime | Unset
        if isinstance(_created_at,  Unset):
            created_at = UNSET
        else:
            created_at = datetime.datetime.fromisoformat(_created_at)




        network = d.pop("network", UNSET)

        source_addr = d.pop("source_addr", UNSET)

        destination_addr = d.pop("destination_addr", UNSET)

        keyword = d.pop("keyword", UNSET)

        content = d.pop("content", UNSET)

        _received_at = d.pop("received_at", UNSET)
        received_at: datetime.datetime | Unset
        if isinstance(_received_at,  Unset):
            received_at = UNSET
        else:
            received_at = datetime.datetime.fromisoformat(_received_at)




        get_v2_inbound_messages_response_200_item = cls(
            message_id=message_id,
            created_at=created_at,
            network=network,
            source_addr=source_addr,
            destination_addr=destination_addr,
            keyword=keyword,
            content=content,
            received_at=received_at,
        )


        get_v2_inbound_messages_response_200_item.additional_properties = d
        return get_v2_inbound_messages_response_200_item

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
