package seg3x02.carhms.application.dtos.queries

import java.time.LocalDateTime
import java.util.UUID

data class HikeCreateDto(
    val organizerId: UUID,
    val trailId: UUID,
    val title: String,
    val description: String,
    val startDateTime: LocalDateTime,
    val expectedDurationMinutes: Int,
    val registrationDeadline: LocalDateTime,
    val capacity: Int
)
