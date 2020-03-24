//
// Created by apokdev on 3/10/20.
//

import Foundation

class UpdateCustomerAddressResponse: BaseResponse {
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
        try address = container.decode(CustomerAddress.self, forKey: .address)
        try customer = container.decode(Customer.self, forKey: .customer)
        try super.init(from: decoder)

    }
}

extension UpdateCustomerAddressResponse  {
    static func == (a: UpdateCustomerAddressResponse, b: UpdateCustomerAddressResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.customer == b.customer &&
        a.address == b.address
    }
}
