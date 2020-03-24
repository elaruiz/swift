//
// Created by apokdev on 3/10/20.
//

import Foundation

class SendPayoutResponse: BaseResponse {
    private(set) var order: Order
    private(set) var client: Client?

    init(message: String, code: Int, currentTime: String? = nil, order: Order, client: Client? = nil) {
        self.order = order
        self.client = client
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case order, client
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try order = container.decode(Order.self, forKey: .order)
        try client = container.decodeIfPresent(Client.self, forKey: .client)
        try super.init(from: decoder)

    }
}

extension SendPayoutResponse  {
    static func == (a: SendPayoutResponse, b: SendPayoutResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.order == b.order &&
        a.client == b.client
    }
}
