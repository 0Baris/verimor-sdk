from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..types import UNSET, Unset
from typing import cast






T = TypeVar("T", bound="TemplateMessageRequest")



@_attrs_define
class TemplateMessageRequest:
    

    to: str
    """ Alıcı telefon numarası """
    template_name: str
    """ Onaylı şablon adı """
    language: str | Unset = 'tr'
    """ Şablon dili """
    parameters: list[str] | None | Unset = UNSET
    """ Şablon parametreleri (body bileşeni için) """
    use_tenant_queue: bool | Unset = False
    """ True ise tenant-spesifik kuyruğa yönlendir (büyük müşteriler için) """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        to = self.to

        template_name = self.template_name

        language = self.language

        parameters: list[str] | None | Unset
        if isinstance(self.parameters, Unset):
            parameters = UNSET
        elif isinstance(self.parameters, list):
            parameters = self.parameters


        else:
            parameters = self.parameters

        use_tenant_queue = self.use_tenant_queue


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "to": to,
            "template_name": template_name,
        })
        if language is not UNSET:
            field_dict["language"] = language
        if parameters is not UNSET:
            field_dict["parameters"] = parameters
        if use_tenant_queue is not UNSET:
            field_dict["use_tenant_queue"] = use_tenant_queue

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        to = d.pop("to")

        template_name = d.pop("template_name")

        language = d.pop("language", UNSET)

        def _parse_parameters(data: object) -> list[str] | None | Unset:
            if data is None:
                return data
            if isinstance(data, Unset):
                return data
            try:
                if not isinstance(data, list):
                    raise TypeError()
                parameters_type_0 = cast(list[str], data)

                return parameters_type_0
            except (TypeError, ValueError, AttributeError, KeyError):
                pass
            return cast(list[str] | None | Unset, data)

        parameters = _parse_parameters(d.pop("parameters", UNSET))


        use_tenant_queue = d.pop("use_tenant_queue", UNSET)

        template_message_request = cls(
            to=to,
            template_name=template_name,
            language=language,
            parameters=parameters,
            use_tenant_queue=use_tenant_queue,
        )


        template_message_request.additional_properties = d
        return template_message_request

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
