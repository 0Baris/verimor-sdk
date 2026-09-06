from enum import StrEnum

class GetCrmIntegrationsResponse200Ringing(StrEnum):
    OFF = "off"
    ON = "on"

    def __str__(self) -> str:
        return str(self.value)
