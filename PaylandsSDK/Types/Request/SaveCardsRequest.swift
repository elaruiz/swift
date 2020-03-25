//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SaveCardsRequest: Encodable {
    private(set) var cards = [BatchCardRequest]()

    mutating func addCard(card: BatchCardRequest) {
        self.cards.append(card)
    }

}

struct BatchCardRequest: Encodable {
    private(set) var customerId: String
    private(set) var cardHolder: String
    private(set) var cardPan: String
    private(set) var cardExpiryMonth: Int = 0
    private(set) var cardExpiryYear: Int = 0
    private(set) var cardCvv: String? = nil
    private(set) var additional: String? = nil
    private(set) var urlPost: String? = nil

    enum CodingKeys: String, CodingKey {
        case cardHolder, cardPan, cardExpiryMonth, cardExpiryYear, cardCvv, additional, urlPost
        case customerId = "customer_ext_id"
    }

}