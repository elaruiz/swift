//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SendPayoutRequest: Encodable {
    private(set) var orderUUID: UUID
    private(set) var sourceUUID: UUID


    enum CodingKeys: String, CodingKey {
        case orderUUID = "order_uuid"
        case sourceUUID = "source_uuid"
    }

}