//
// Created by apokdev on 3/9/20.
//

import Foundation

struct RemoveCardRequest: Encodable {
    private(set) var cardUUID: String
    private(set) var customerId: String

    enum CodingKeys: String, CodingKey {
        case customerId = "customer_external_id"
        case cardUUID = "card_uuid"

    }

}
