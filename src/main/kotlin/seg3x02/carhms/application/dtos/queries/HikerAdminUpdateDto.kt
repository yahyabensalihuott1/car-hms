package seg3x02.carhms.application.dtos.queries

import java.util.UUID

data class HikerAdminUpdateDto(
    val adminId: UUID,
    val hikerId: UUID,
    val membershipStatus: String? = null,
    val skillLevel: String? = null
)
