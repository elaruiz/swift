//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GetPaymentAgentsRequest: Encodable {
    private(set) var serviceUUID: String


    enum CodingKeys: String, CodingKey {
        case serviceUUID = "service_uuid"

    }


}
