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
}

extension CreateCustomerProfileResponse  {
    static func == (a: CreateCustomerProfileResponse, b: CreateCustomerProfileResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.customer == b.customer &&
        a.profile == b.profile
    }
}