package seg3x02.carhms.application.dtos.queries

data class AddressCreateDto(
    val street: String,
    val city: String,
    val province: String,
    val postalCode: String
)
