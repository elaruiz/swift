//
// Created by apokdev on 3/9/20.
//

import Foundation

struct CreateCustomerRequest: Encodable {
    var customerId: String

    enum CodingKeys: String, CodingKey {
        case customerId = "customer_ext_id"
    }

}