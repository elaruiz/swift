//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateCustomerAddressResponse: BaseResponse {
    private(set) var customer: Customer
    private(set) var address: CustomerAddress

    private enum CodingKeys: String, CodingKey {
        case customer
        case address = "customer_address"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try customer = container.decode(Customer.self, forKey: .customer)
        try address = container.decode(CustomerAddress.self, forKey: .address)
        try super.init(from: decoder)

    }
}
