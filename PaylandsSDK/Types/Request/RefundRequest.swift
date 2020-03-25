//
// Created by apokdev on 3/9/20.
//

import Foundation

struct RefundRequest: Encodable {
    private(set) var orderUUID: UUID
    private(set) var amount: Decimal? = nil

    enum CodingKeys: String, CodingKey {
        case amount
        case orderUUID = "order_uuid"

    }

}