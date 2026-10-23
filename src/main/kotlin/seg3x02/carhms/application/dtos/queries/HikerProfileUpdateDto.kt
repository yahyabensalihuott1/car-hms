package seg3x02.carhms.application.dtos.queries

import java.util.UUID

data class HikerProfileUpdateDto(
    val hikerId: UUID,
    val firstName: String,
    val lastName: String,
    val phone: String,
    val address: AddressCreateDto,
    val emergencyContact: EmergencyContactCreateDto,
    val newPassword: String? = null
)
