from __future__ import annotations

from collections.abc import Mapping
from typing import Any, TypeVar, BinaryIO, TextIO, TYPE_CHECKING, Generator

from attrs import define as _attrs_define
from attrs import field as _attrs_field

from ..types import UNSET, Unset

from ..models.get_crm_integrations_response_200_answered import GetCrmIntegrationsResponse200Answered
from ..models.get_crm_integrations_response_200_hangup import GetCrmIntegrationsResponse200Hangup
from ..models.get_crm_integrations_response_200_ringing import GetCrmIntegrationsResponse200Ringing






T = TypeVar("T", bound="GetCrmIntegrationsResponse200")



@_attrs_define
class GetCrmIntegrationsResponse200:
    

    ringing: GetCrmIntegrationsResponse200Ringing
    """ Çağrı çalma olayları için webhook bildirimi (on: aktif, off: pasif) """
    answered: GetCrmIntegrationsResponse200Answered
    """ Çağrı cevaplanma olayları için webhook bildirimi (on: aktif, off: pasif) """
    hangup: GetCrmIntegrationsResponse200Hangup
    """ Çağrı kapanma olayları için webhook bildirimi (on: aktif, off: pasif) """
    notification_url: str
    """ CRM bildirimlerinin gönderileceği webhook URL adresi """
    additional_properties: dict[str, Any] = _attrs_field(init=False, factory=dict)





    def to_dict(self) -> dict[str, Any]:
        ringing = self.ringing.value

        answered = self.answered.value

        hangup = self.hangup.value

        notification_url = self.notification_url


        field_dict: dict[str, Any] = {}
        field_dict.update(self.additional_properties)
        field_dict.update({
            "ringing": ringing,
            "answered": answered,
            "hangup": hangup,
            "notification_url": notification_url,
        })

        return field_dict



    @classmethod
    def from_dict(cls: type[T], src_dict: Mapping[str, Any]) -> T:
        d = dict(src_dict)
        ringing = GetCrmIntegrationsResponse200Ringing(d.pop("ringing"))




        answered = GetCrmIntegrationsResponse200Answered(d.pop("answered"))




        hangup = GetCrmIntegrationsResponse200Hangup(d.pop("hangup"))




        notification_url = d.pop("notification_url")

        get_crm_integrations_response_200 = cls(
            ringing=ringing,
            answered=answered,
            hangup=hangup,
            notification_url=notification_url,
        )


        get_crm_integrations_response_200.additional_properties = d
        return get_crm_integrations_response_200

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
