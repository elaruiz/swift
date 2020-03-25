//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GetProductsRequest: Encodable {
    private(set) var serviceUUID: String
    private(set) var paymentTypeCd: String


    enum CodingKeys: String, CodingKey {
        case paymentTypeCd
        case serviceUUID = "service_uuid"

    }


}
