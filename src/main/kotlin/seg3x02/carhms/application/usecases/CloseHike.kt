package seg3x02.carhms.application.usecases

import java.util.UUID

interface CloseHike {
    fun closeHike(hikeId: UUID): Boolean
}
