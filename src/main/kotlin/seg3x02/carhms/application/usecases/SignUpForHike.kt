package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.SignUpDto
import java.util.UUID

interface SignUpForHike {
    fun signUpForHike(signUp: SignUpDto): UUID?
}
