//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GetCustomerCardsRequest: Encodable {
    private(set) var customerId: String
    private(set) var status: CardStatus? = nil
    private(set) var unique: Bool? = nil

    enum CodingKeys: String, CodingKey {
        case status, unique
        case customerId = "customer_ext_id"
    }


}