//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetCardResponse: BaseResponse {
    private(set) var customer: Customer
    private(set) var card: Card

    init(message: String, code: Int, currentTime: String? = nil, customer: Customer, card: Card) {
        self.customer = customer
        self.card = card
        super.init(message: message, code: code, currentTime: currentTime)
    }

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

extension GetCardResponse  {
    static func == (a: GetCardResponse, b: GetCardResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.customer == b.customer &&
        a.card == b.card
    }
}
