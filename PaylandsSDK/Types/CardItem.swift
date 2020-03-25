//
// Created by apokdev on 3/5/20.
//

import Foundation

struct CardItem: Codable {
    private(set) var customer: Customer
    private(set) var card: Card

    enum CodingKeys: String, CodingKey {
        case customer = "Customer"
        case card = "Source"
    }

}

extension CardItem: Equatable  {
    static func == (a: CardItem, b: CardItem) -> Bool {
        return a.customer == b.customer &&
        a.card == b.card
    }
}
