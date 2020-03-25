//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateCustomerProfileResponse: BaseResponse {
    private(set) var customer: Customer
    private(set) var profile: CustomerProfile

    init(message: String, code: Int, currentTime: String? = nil, customer: Customer, profile: CustomerProfile) {
        self.customer = customer
        self.profile = profile
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case customer
        case profile = "customer_profile"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try customer = container.decode(Customer.self, forKey: .customer)
        try profile = container.decode(CustomerProfile.self, forKey: .profile)
        try super.init(from: decoder)

    }
    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? CreateCustomerProfileResponse {
            return customer == rhs.customer &&
            profile == rhs.profile && super.equals(rhs)
        }
        return false
    }
}
