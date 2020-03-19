//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetSubscriptionsResponse: BaseResponse {
    private(set) var subscriptions: [Subscription]


    private enum CodingKeys: String, CodingKey {
        case subscriptions
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try subscriptions = container.decode([Subscription].self, forKey: .subscriptions)
        try super.init(from: decoder)

    }
}
