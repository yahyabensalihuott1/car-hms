package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikeCancelDto

interface CancelHike {
    fun cancelHike(cancellation: HikeCancelDto): Boolean
}
