package seg3x02.carhms.application.dtos.responses

import java.time.LocalDateTime
import java.util.UUID

data class HikeSummaryDto(
    val hikeId: UUID,
    val title: String,
    val trailName: String,
    val difficulty: String,
    val startDateTime: LocalDateTime,
    val startingPoint: String,
    val organizerName: String,
    val status: String,
    val remainingSpots: Int
)
