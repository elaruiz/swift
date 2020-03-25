//
// Created by apokdev on 3/10/20.
//

import Foundation

class SaveCardResponse: BaseResponse {
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

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? SaveCardResponse {
            return customer == rhs.customer &&
            card == rhs.card && super.equals(rhs)
        }
        return false
    }
}
