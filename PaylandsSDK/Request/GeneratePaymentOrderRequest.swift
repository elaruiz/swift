//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GeneratePaymentOrderRequest: Encodable {
    private(set) var amount: Decimal = 0.0
    private(set) var operative: Operative
    private(set) var description: String
    private(set) var service: String
    private(set) var customerId: String? = nil
    private(set) var additional: String? = nil
    private(set) var secure: Bool? = nil
    private(set) var urlPost: String? = nil
    private(set) var urlOk: String? = nil
    private(set) var urlKo: String? = nil
    private(set) var templateUUID: String? = nil
    private(set) var dccTemplateUUID: String? = nil
    private(set) var sourceUUID: String? = nil
    private(set) var extraData: OrderExtraData? = nil


    enum CodingKeys: String, CodingKey {
        case amount, operative, description, service, additional, secure, urlPost, urlOk, urlKo, templateUUID, dccTemplateUUID, sourceUUID, extraData
        case customerId = "customer_ext_id"

    }

}
