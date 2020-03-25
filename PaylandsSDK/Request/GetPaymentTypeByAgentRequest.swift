//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GetPaymentTypeByAgentRequest: Encodable {
    private(set) var serviceUUID: String
    private(set) var paymentAgentCd: String? = nil


    enum CodingKeys: String, CodingKey {
        case paymentAgentCd = "pay_agent_cd"
        case serviceUUID = "service_uuid"

    }


}
