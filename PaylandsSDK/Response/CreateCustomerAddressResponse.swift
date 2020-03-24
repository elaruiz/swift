//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateCustomerAddressResponse: BaseResponse {
    private(set) var customer: Customer
    private(set) var address: CustomerAddress

    init(message: String, code: Int, currentTime: String? = nil, customer: Customer, address: CustomerAddress) {
        self.customer = customer
        self.address = address
        super.init(message: message, code: code, currentTime: currentTime)
    }

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

extension CreateCustomerAddressResponse  {
    static func == (a: CreateCustomerAddressResponse, b: CreateCustomerAddressResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.customer == b.customer &&
        a.address == b.address
    }
}
