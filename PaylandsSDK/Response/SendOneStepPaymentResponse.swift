//
// Created by apokdev on 3/10/20.
//

import Foundation

class SendOneStepPaymentResponse: BaseResponse {
    private(set) var order: Order
    private(set) var client: Client
    private(set) var extraData: OrderExtraData? = nil


    private enum CodingKeys: String, CodingKey {
        case order, client
        case extraData = "extra_data"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try order = container.decode(Order.self, forKey: .order)
        try client = container.decode(Client.self, forKey: .client)
        try extraData = container.decodeIfPresent(OrderExtraData.self, forKey: .extraData)
        try super.init(from: decoder)

    }
}
