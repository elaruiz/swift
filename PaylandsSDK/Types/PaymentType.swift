//
// Created by apokdev on 3/5/20.
//

import Foundation

struct PaymentType: Codable {
    private(set) var paymentAgentCode: String
    private(set) var paymentTypeCode: PaymentTypeCode
    private(set) var country: String
    private(set) var currency: String


    enum CodingKeys: String, CodingKey {
        case paymentAgentCode = "pay_agent_cd"
        case paymentTypeCode = "payment_type_cd"
        case country = "dest_country_cd"
        case currency = "dest_currency_cd"
    }
}

extension PaymentType: Equatable  {
    static func == (a: PaymentAgent, b: PaymentAgent) -> Bool {
        return
            a.paymentAgentCode == b.paymentAgentCode &&
            a.paymentTypeCode == b.paymentTypeCode &&
            a.country == b.country &&
            a.currency == b.currency
    }
}

