from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast

if TYPE_CHECKING:
  from ..models.get_cdr_response_200_call_flow_item import GetCdrResponse200CallFlowItem
  from ..models.get_cdr_response_200_cdr import GetCdrResponse200Cdr





T = TypeVar("T", bound="GetCdrResponse200")



@_attrs_define
class GetCdrResponse200:
    

    cdr: GetCdrResponse200Cdr | Unset = UNSET
    call_flow: list[GetCdrResponse200CallFlowItem] | Unset = UNSET
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        from ..models.get_cdr_response_200_call_flow_item import GetCdrResponse200CallFlowItem # noqa: PLC0415
        from ..models.get_cdr_response_200_cdr import GetCdrResponse200Cdr # noqa: PLC0415
        cdr: dict[str, Any] | Unset = UNSET
        if not isinstance(self.cdr, Unset):
            cdr = self.cdr.to_dict()

        call_flow: list[dict[str, Any]] | Unset = UNSET
        if not isinstance(self.call_flow, Unset):
            call_flow = []
            for call_flow_item_data in self.call_flow:
                call_flow_item = call_flow_item_data.to_dict()
                call_flow.append(call_flow_item)




        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if cdr is not UNSET:
            field_dict["cdr"] = cdr
        if call_flow is not UNSET:
            field_dict["call_flow"] = call_flow

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        from ..models.get_cdr_response_200_call_flow_item import GetCdrResponse200CallFlowItem # noqa: PLC0415
        from ..models.get_cdr_response_200_cdr import GetCdrResponse200Cdr # noqa: PLC0415
        d = dict(src_dict)
        _cdr = d.pop("cdr", UNSET)
        cdr: GetCdrResponse200Cdr | Unset
        if isinstance(_cdr,  Unset):
            cdr = UNSET
        else:
            cdr = GetCdrResponse200Cdr.from_dict(_cdr)




        _call_flow = d.pop("call_flow", UNSET)
        call_flow: list[GetCdrResponse200CallFlowItem] | Unset = UNSET
        if _call_flow is not UNSET:
            call_flow = []
            for call_flow_item_data in _call_flow:
                call_flow_item = GetCdrResponse200CallFlowItem.from_dict(call_flow_item_data)



                call_flow.append(call_flow_item)


        get_cdr_response_200 = cls(
            cdr=cdr,
            call_flow=call_flow,
        )


        get_cdr_response_200.additional_properties = d
        return get_cdr_response_200

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
