//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetSubscriptionPlansResponse: BaseResponse {
    private(set) var plans: [SubscriptionPlan]

    init(message: String, code: Int, currentTime: String? = nil, plans: [SubscriptionPlan]) {
        self.plans = plans
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case plans
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try plans = container.decode([SubscriptionPlan].self, forKey: .plans)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? GetSubscriptionPlansResponse {
            return plans  == rhs.plans  &&
            super.equals(rhs)
        }
        return false
    }
}
