//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetCustomerAddressResponse: BaseResponse {
    private(set) var address: CustomerAddress

    init(message: String, code: Int, currentTime: String? = nil, address: CustomerAddress) {
        self.address = address
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case address = "customer_address"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try address = container.decode(CustomerAddress.self, forKey: .address)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? GetCustomerAddressResponse {
            return address == rhs.address &&
            super.equals(rhs)
        }
        return false
    }
}
