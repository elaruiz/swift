//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateMotoCampaignResponse: BaseResponse {
    private(set) var detail: CampaignDetail
    private(set) var payments: [MotoCampaignPayment]

    private enum CodingKeys: String, CodingKey {
        case detail, payments
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try detail = container.decode(CampaignDetail.self, forKey: .detail)
        try payments = container.decode([MotoCampaignPayment].self, forKey: .payments)
        try super.init(from: decoder)

    }
}
