from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="GetQueuesPendingResponse200Item")



@_attrs_define
class GetQueuesPendingResponse200Item:
    """ Pending call information from Redis queue data

     """

    queue_number: str | Unset = UNSET
    """ Kuyruk numarası """
    uuid: str | Unset = UNSET
    """ Çağrı UUID'si """
    call_uuid: str | Unset = UNSET
    """ Çağrı UUID'si """
    caller_id: str | Unset = UNSET
    """ Arayan numara """
    joined_at: str | Unset = UNSET
    """ Kuyruğa katılma zamanı (timestamp) """
    wait_time: int | Unset = UNSET
    """ Bekleme süresi (saniye) """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        queue_number = self.queue_number

        uuid = self.uuid

        call_uuid = self.call_uuid

        caller_id = self.caller_id

        joined_at = self.joined_at

        wait_time = self.wait_time


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if queue_number is not UNSET:
            field_dict["queue_number"] = queue_number
        if uuid is not UNSET:
            field_dict["uuid"] = uuid
        if call_uuid is not UNSET:
            field_dict["call_uuid"] = call_uuid
        if caller_id is not UNSET:
            field_dict["caller_id"] = caller_id
        if joined_at is not UNSET:
            field_dict["joined_at"] = joined_at
        if wait_time is not UNSET:
            field_dict["wait_time"] = wait_time

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        queue_number = d.pop("queue_number", UNSET)

        uuid = d.pop("uuid", UNSET)

        call_uuid = d.pop("call_uuid", UNSET)

        caller_id = d.pop("caller_id", UNSET)

        joined_at = d.pop("joined_at", UNSET)

        wait_time = d.pop("wait_time", UNSET)

        get_queues_pending_response_200_item = cls(
            queue_number=queue_number,
            uuid=uuid,
            call_uuid=call_uuid,
            caller_id=caller_id,
            joined_at=joined_at,
            wait_time=wait_time,
        )


        get_queues_pending_response_200_item.additional_properties = d
        return get_queues_pending_response_200_item

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
