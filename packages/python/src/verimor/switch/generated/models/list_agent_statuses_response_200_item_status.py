from enum import StrEnum

class ListAgentStatusesResponse200ItemStatus(StrEnum):
    AVAILABLE = "AVAILABLE"
    LOGGED_OUT = "LOGGED_OUT"
    ON_BREAK = "ON_BREAK"
    TALKING = "TALKING"

    def __str__(self) -> str:
        return str(self.value)
