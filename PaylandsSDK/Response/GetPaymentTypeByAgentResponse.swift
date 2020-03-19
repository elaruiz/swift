//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetPaymentTypeByAgentResponse: BaseResponse {
    private(set) var paymentTypes: [PaymentType]


    private enum CodingKeys: String, CodingKey {
        case paymentTypes = "payment_types"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try paymentTypes = container.decode([PaymentType].self, forKey: .paymentTypes)
        try super.init(from: decoder)

    }
}
