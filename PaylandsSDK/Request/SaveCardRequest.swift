//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SaveCardRequest: Encodable {
    private(set) var customerId: String
    private(set) var cardHolder: String
    private(set) var cardPan: String
    private(set) var cardExpiryMonth: Int = 0
    private(set) var cardExpiryYear: Int = 0
    private(set) var cardCvv: String
    private(set) var validate: Bool = false
    private(set) var service: String
    private(set) var additional: String? = nil
    private(set) var urlPost: String

    enum CodingKeys: String, CodingKey {
        case cardHolder, cardPan, cardExpiryMonth, cardExpiryYear, cardCvv, validate, service, additional, urlPost
        case customerId = "customer_ext_id"

    }

}