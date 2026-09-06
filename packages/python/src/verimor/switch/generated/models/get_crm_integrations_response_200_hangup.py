from enum import StrEnum

class GetCrmIntegrationsResponse200Hangup(StrEnum):
    OFF = "off"
    ON = "on"

    def __str__(self) -> str:
        return str(self.value)
