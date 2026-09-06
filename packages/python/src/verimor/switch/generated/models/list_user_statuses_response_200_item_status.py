from enum import StrEnum

class ListUserStatusesResponse200ItemStatus(StrEnum):
    AVAILABLE = "AVAILABLE"
    SS_DND = "SS_DND"
    TALKING = "TALKING"
    UNREGISTERED = "UNREGISTERED"

    def __str__(self) -> str:
        return str(self.value)
