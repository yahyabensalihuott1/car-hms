package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikeCreateDto
import java.util.UUID

interface CreateHike {
    fun createHike(hike: HikeCreateDto): UUID?
}
