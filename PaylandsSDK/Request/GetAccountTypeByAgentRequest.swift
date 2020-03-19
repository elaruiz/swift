//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GetAccountTypeByAgentRequest: Encodable {
    private(set) var serviceUUID: UUID
    private(set) var payAgentCd: String
    private(set) var country: String
    private(set) var currency: String


    enum CodingKeys: String, CodingKey {
        case payAgentCd, country, currency
        case serviceUUID = "service_uuid"

    }

}