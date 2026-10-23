package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikerRegistrationDto
import java.util.UUID

interface RegisterHiker {
    fun registerHiker(registration: HikerRegistrationDto): UUID?
}
