package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikerAdminUpdateDto
import seg3x02.carhms.application.dtos.queries.HikerProfileUpdateDto
import seg3x02.carhms.application.dtos.queries.LeaderCertificationCreateDto

interface UpdateHiker {
    fun updateHikerProfile(update: HikerProfileUpdateDto): Boolean
    fun updateHikerAdministrativeInfo(update: HikerAdminUpdateDto): Boolean
    fun recordLeaderCertification(certification: LeaderCertificationCreateDto): Boolean
}
