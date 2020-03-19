//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetCustomerAddressResponse: BaseResponse {
    private(set) var address: CustomerAddress

    private enum CodingKeys: String, CodingKey {
        case address = "customer_address"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try address = container.decode(CustomerAddress.self, forKey: .address)
        try super.init(from: decoder)

    }
}
