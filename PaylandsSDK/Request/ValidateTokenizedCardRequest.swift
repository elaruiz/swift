//
// Created by apokdev on 3/9/20.
//

import Foundation

struct ValidateTokenizedCardRequest: Encodable {
    private(set) var customerId: String
    private(set) var service: String
    private(set) var sourceUUID: String
    private(set) var cardCvv: String? = nil


    enum CodingKeys: String, CodingKey {
        case service, cardCvv
        case customerId = "customer_ext_id"
        case sourceUUID = "source_uuid"
    }
    
}