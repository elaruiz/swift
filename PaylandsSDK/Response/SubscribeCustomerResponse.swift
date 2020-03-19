//
// Created by apokdev on 3/10/20.
//

import Foundation

class SubscribeCustomerResponse: BaseResponse {
    private(set) var subscription: Subscription


    private enum CodingKeys: String, CodingKey {
        case subscription
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try subscription = container.decode(Subscription.self, forKey: .subscription)
        try super.init(from: decoder)
    }

}
