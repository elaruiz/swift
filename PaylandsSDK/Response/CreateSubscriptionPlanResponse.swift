//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateSubscriptionPlanResponse: BaseResponse {
    private(set) var plan: SubscriptionPlan

    init(message: String, code: Int, currentTime: String? = nil, plan: SubscriptionPlan) {
        self.plan = plan
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case plan
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try plan = container.decode(SubscriptionPlan.self, forKey: .plan)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? CreateSubscriptionPlanResponse {
            return plan == rhs.plan && super.equals(rhs)
        }
        return false
    }
}
