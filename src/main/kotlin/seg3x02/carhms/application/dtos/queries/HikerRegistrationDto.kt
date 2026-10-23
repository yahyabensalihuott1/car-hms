package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate

data class HikerRegistrationDto(
    val invitationCode: String,
    val email: String,
    val password: String,
    val firstName: String,
    val lastName: String,
    val phone: String,
    val address: AddressCreateDto,
    val dateOfBirth: LocalDate,
    val emergencyContact: EmergencyContactCreateDto,
    val skillLevel: String,
    val waiverAccepted: Boolean,
    val guardianName: String? = null
)
