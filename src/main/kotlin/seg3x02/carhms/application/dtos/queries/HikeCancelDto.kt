package seg3x02.carhms.application.dtos.queries

import java.util.UUID

data class HikeCancelDto(
    val requesterId: UUID,
    val hikeId: UUID,
    val reason: String
)
