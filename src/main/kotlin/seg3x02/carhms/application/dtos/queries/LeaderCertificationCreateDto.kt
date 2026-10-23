package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate
import java.util.UUID

data class LeaderCertificationCreateDto(
    val adminId: UUID,
    val hikerId: UUID,
    val certificateNumber: String,
    val issueDate: LocalDate,
    val expiryDate: LocalDate,
    val organizerLevel: String
)
