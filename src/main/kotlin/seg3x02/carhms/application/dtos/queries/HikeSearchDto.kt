package seg3x02.carhms.application.dtos.queries

import java.time.LocalDate

data class HikeSearchDto(
    val trailName: String? = null,
    val date: LocalDate? = null,
    val difficulty: String? = null
)
