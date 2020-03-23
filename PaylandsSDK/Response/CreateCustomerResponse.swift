//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateCustomerResponse: BaseResponse {
    private(set) var customer: Customer

    init(message: String, code: Int, currentTime: String? = nil, customer: Customer) {
        self.customer = customer
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case customer = "Customer"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try customer = container.decode(Customer.self, forKey: .customer)
        try super.init(from: decoder)

    }
}
