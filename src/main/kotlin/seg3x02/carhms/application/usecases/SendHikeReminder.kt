package seg3x02.carhms.application.usecases

import java.util.UUID

interface SendHikeReminder {
    fun sendHikeReminders(hikeId: UUID): Boolean
}
