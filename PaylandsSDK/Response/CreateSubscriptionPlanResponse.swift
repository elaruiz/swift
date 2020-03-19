//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateSubscriptionPlanResponse: BaseResponse {
    private(set) var plan: SubscriptionPlan

    private enum CodingKeys: String, CodingKey {
        case plan
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try plan = container.decode(SubscriptionPlan.self, forKey: .plan)
        try super.init(from: decoder)

    }
}
