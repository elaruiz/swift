//
// Created by apokdev on 3/10/20.
//

import Foundation

class SubscribeCustomerResponse: BaseResponse {
    private(set) var subscription: Subscription

    init(message: String, code: Int, currentTime: String? = nil, subscription: Subscription) {
        self.subscription = subscription
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case subscription
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try subscription = container.decode(Subscription.self, forKey: .subscription)
        try super.init(from: decoder)
    }

}

extension SubscribeCustomerResponse  {
    static func == (a: SubscribeCustomerResponse, b: SubscribeCustomerResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.subscription == b.subscription
    }
}
