from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset






T = TypeVar("T", bound="GetExtensionResponse200")



@_attrs_define
class GetExtensionResponse200:
    

    number: str | Unset = UNSET
    """ Dahili numarası """
    password: str | Unset = UNSET
    """ Dahilinin SIP şifresi """
    domain: str | Unset = UNSET
    """ Dahilinin bağlı olduğu santral (domain) adı """
    name: str | Unset = UNSET
    """ Dahili sahibinin adı """
    dnd: bool | Unset = UNSET
    """ Rahatsız Etme (DND) modu açık mı """
    is_agent: bool | Unset = UNSET
    """ Bu dahili bir Müşteri Temsilcisi (MT) mi """
    max_calls: int | Unset = UNSET
    """ Dahilinin eş zamanlı kabul edebileceği maksimum çağrı sayısı """
    use_webrtc: bool | Unset = UNSET
    """ WebRTC (web telefon) kullanımı açık mı """
    time_range_begin: str | Unset = UNSET
    """ Dahilinin çalışma saati başlangıcı """
    time_range_end: str | Unset = UNSET
    """ Dahilinin çalışma saati bitişi """
    outbound_caller_id_number: str | Unset = UNSET
    """ Giden aramalarda kullanılan dış numara """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        number = self.number

        password = self.password

        domain = self.domain

        name = self.name

        dnd = self.dnd

        is_agent = self.is_agent

        max_calls = self.max_calls

        use_webrtc = self.use_webrtc

        time_range_begin = self.time_range_begin

        time_range_end = self.time_range_end

        outbound_caller_id_number = self.outbound_caller_id_number


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
        })
        if number is not UNSET:
            field_dict["number"] = number
        if password is not UNSET:
            field_dict["password"] = password
        if domain is not UNSET:
            field_dict["domain"] = domain
        if name is not UNSET:
            field_dict["name"] = name
        if dnd is not UNSET:
            field_dict["dnd"] = dnd
        if is_agent is not UNSET:
            field_dict["is_agent"] = is_agent
        if max_calls is not UNSET:
            field_dict["max_calls"] = max_calls
        if use_webrtc is not UNSET:
            field_dict["use_webrtc"] = use_webrtc
        if time_range_begin is not UNSET:
            field_dict["time_range_begin"] = time_range_begin
        if time_range_end is not UNSET:
            field_dict["time_range_end"] = time_range_end
        if outbound_caller_id_number is not UNSET:
            field_dict["outbound_caller_id_number"] = outbound_caller_id_number

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        number = d.pop("number", UNSET)

        password = d.pop("password", UNSET)

        domain = d.pop("domain", UNSET)

        name = d.pop("name", UNSET)

        dnd = d.pop("dnd", UNSET)

        is_agent = d.pop("is_agent", UNSET)

        max_calls = d.pop("max_calls", UNSET)

        use_webrtc = d.pop("use_webrtc", UNSET)

        time_range_begin = d.pop("time_range_begin", UNSET)

        time_range_end = d.pop("time_range_end", UNSET)

        outbound_caller_id_number = d.pop("outbound_caller_id_number", UNSET)

        get_extension_response_200 = cls(
            number=number,
            password=password,
            domain=domain,
            name=name,
            dnd=dnd,
            is_agent=is_agent,
            max_calls=max_calls,
            use_webrtc=use_webrtc,
            time_range_begin=time_range_begin,
            time_range_end=time_range_end,
            outbound_caller_id_number=outbound_caller_id_number,
        )


        get_extension_response_200.additional_properties = d
        return get_extension_response_200

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
