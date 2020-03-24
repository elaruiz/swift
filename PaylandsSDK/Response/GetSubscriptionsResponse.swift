//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetSubscriptionsResponse: BaseResponse {
    private(set) var subscriptions: [Subscription]

    init(message: String, code: Int, currentTime: String? = nil, subscriptions: [Subscription]) {
        self.subscriptions = subscriptions
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case subscriptions
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try subscriptions = container.decode([Subscription].self, forKey: .subscriptions)
        try super.init(from: decoder)

    }
}

extension GetSubscriptionsResponse  {
    static func == (a: GetSubscriptionsResponse, b: GetSubscriptionsResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.subscriptions == b.subscriptions
    }
}
