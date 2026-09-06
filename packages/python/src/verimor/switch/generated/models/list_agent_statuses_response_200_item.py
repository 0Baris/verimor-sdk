from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..models.list_agent_statuses_response_200_item_status import ListAgentStatusesResponse200ItemStatus
from ..types import UNSET, Unset
from typing import cast






T = TypeVar("T", bound="ListAgentStatusesResponse200Item")



@_attrs_define
class ListAgentStatusesResponse200Item:
    

    agent: str
    """ MT numarası """
    queues: list[str]
    """ MT'nin üye olduğu kuyruklar """
    status: ListAgentStatusesResponse200ItemStatus
    """ MT durumu (AVAILABLE=Müsait, TALKING=Çağrıda, LOGGED_OUT=Çevrimdışı, ON_BREAK=Molada) """
    break_description: str | Unset = UNSET
    """ MT molada ise, mola açıklaması (sadece status ON_BREAK olduğunda mevcut) """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        agent = self.agent

        queues = self.queues



        status = self.status.value

        break_description = self.break_description


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "agent": agent,
            "queues": queues,
            "status": status,
        })
        if break_description is not UNSET:
            field_dict["break_description"] = break_description

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        agent = d.pop("agent")

        queues = cast(list[str], d.pop("queues"))


        status = ListAgentStatusesResponse200ItemStatus(d.pop("status"))




        break_description = d.pop("break_description", UNSET)

        list_agent_statuses_response_200_item = cls(
            agent=agent,
            queues=queues,
            status=status,
            break_description=break_description,
        )


        list_agent_statuses_response_200_item.additional_properties = d
        return list_agent_statuses_response_200_item

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
