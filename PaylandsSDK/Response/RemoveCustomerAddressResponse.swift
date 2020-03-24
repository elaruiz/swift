//
// Created by apokdev on 3/10/20.
//

import Foundation

class RemoveCustomerAddressResponse: BaseResponse {
    private(set) var customerAddress: CustomerAddress

    init(message: String, code: Int, currentTime: String? = nil, customerAddress: CustomerAddress) {
        self.customerAddress = customerAddress
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case customerAddress = "customer_address"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try customerAddress = container.decode(CustomerAddress.self, forKey: .customerAddress)
        try super.init(from: decoder)

    }
}

extension RemoveCustomerAddressResponse  {
    static func == (a: RemoveCustomerAddressResponse, b: RemoveCustomerAddressResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.customerAddress == b.customerAddress
    }
}
