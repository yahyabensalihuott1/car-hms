package seg3x02.carhms.application.dtos.queries

import java.util.UUID

data class CancelSignUpDto(
    val hikerId: UUID,
    val registrationId: UUID
)
