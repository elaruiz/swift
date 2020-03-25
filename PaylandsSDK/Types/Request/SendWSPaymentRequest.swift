//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SendWSPaymentRequest: Encodable {
    private(set) var orderUUID: String
    private(set) var cardUUID: String
    private(set) var customerIp: String? = nil


    enum CodingKeys: String, CodingKey {
        case customerIp
        case orderUUID = "order_uuid"
        case cardUUID = "card_uuid"
    }
    
}
