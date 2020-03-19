//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SendWSPaymentRequest: Encodable {
    private(set) var orderUUID: UUID
    private(set) var cardUUID: UUID
    private(set) var customerIp: String? = nil


    enum CodingKeys: String, CodingKey {
        case customerIp
        case orderUUID = "order_uuid"
        case cardUUID = "card_uuid"
    }
    
}