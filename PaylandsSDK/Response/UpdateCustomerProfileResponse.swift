//
// Created by apokdev on 3/10/20.
//

import Foundation

class UpdateCustomerProfileResponse: BaseResponse {
    private(set) var customer: Customer
    private(set) var profile: CustomerProfile

    private enum CodingKeys: String, CodingKey {
        case customer
        case profile = "customer_profile"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try profile = container.decode(CustomerProfile.self, forKey: .profile)
        try customer = container.decode(Customer.self, forKey: .customer)
        try super.init(from: decoder)

    }
}
