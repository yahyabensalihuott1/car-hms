package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.CancelSignUpDto

interface CancelSignUp {
    fun cancelSignUp(cancellation: CancelSignUpDto): Boolean
}
