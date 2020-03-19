//
// Created by apokdev on 3/10/20.
//

import Foundation

class RemoveCustomerAddressResponse: BaseResponse {
    private(set) var customerAddress: CustomerAddress


    private enum CodingKeys: String, CodingKey {
        case customerAddress = "customer_address"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try customerAddress = container.decode(CustomerAddress.self, forKey: .customerAddress)
        try super.init(from: decoder)

    }
}
