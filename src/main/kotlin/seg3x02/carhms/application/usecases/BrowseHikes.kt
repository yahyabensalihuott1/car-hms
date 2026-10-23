package seg3x02.carhms.application.usecases

import seg3x02.carhms.application.dtos.queries.HikeSearchDto
import seg3x02.carhms.application.dtos.responses.HikeSummaryDto
import java.util.UUID

interface BrowseHikes {
    fun listOpenHikes(): List<HikeSummaryDto>
    fun searchHikes(criteria: HikeSearchDto): List<HikeSummaryDto>
    fun listHikesForHiker(hikerId: UUID): List<HikeSummaryDto>
}
