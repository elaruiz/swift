//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SendOneStepPaymentRequest: Encodable {
    private(set) var amount: Decimal = 0.0
    private(set) var description: String
    private(set) var operative: Operative
    private(set) var customerId: String
    private(set) var additional: String? = nil
    private(set) var service: String
    private(set) var secure: Bool = true
    private(set) var urlPost: String
    private(set) var urlOk: String
    private(set) var urlKo: String
    private(set) var templateUUID: String
    private(set) var cardHolder: String
    private(set) var cardPan: String
    private(set) var cardExpiryYear: Int = 0
    private(set) var cardExpiryMonth: Int = 0
    private(set) var cardCvv: String
    private(set) var cardAdditional: String? = nil

    enum CodingKeys: String, CodingKey {
        case amount, operative, description, service, secure, urlPost, urlOk, urlKo, cardHolder, cardPan, cardExpiryYear, cardExpiryMonth, cardCvv, additional, cardAdditional
        case customerId = "customer_ext_id"
        case templateUUID = "template_uuid"
    }
}