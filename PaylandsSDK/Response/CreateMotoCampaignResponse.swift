//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateMotoCampaignResponse: BaseResponse {
    private(set) var detail: CampaignDetail
    private(set) var payments: [MotoCampaignPayment]

    init(message: String, code: Int, currentTime: String? = nil, detail: CampaignDetail, payments: [MotoCampaignPayment]) {
        self.detail = detail
        self.payments = payments
        super.init(message: message, code: code, currentTime: currentTime)
    }

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
