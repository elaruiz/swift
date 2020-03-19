//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetCardResponse: BaseResponse {
    private(set) var customer: Customer
    private(set) var card: Card

    private enum CodingKeys: String, CodingKey {
        case customer = "Customer"
        case card = "Source"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try customer = container.decode(Customer.self, forKey: .customer)
        try card = container.decode(Card.self, forKey: .card)
        try super.init(from: decoder)

    }
}
