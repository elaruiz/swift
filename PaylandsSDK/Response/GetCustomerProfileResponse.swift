//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetCustomerProfileResponse: BaseResponse {
    private(set) var profile: CustomerProfile

    private enum CodingKeys: String, CodingKey {
        case profile = "customer_profile"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try profile = container.decode(CustomerProfile.self, forKey: .profile)
        try super.init(from: decoder)

    }
}
