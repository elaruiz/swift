//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetCustomerProfileResponse: BaseResponse {
    private(set) var profile: CustomerProfile

    init(message: String, code: Int, currentTime: String? = nil, profile: CustomerProfile) {
        self.profile = profile
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case profile = "customer_profile"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try profile = container.decode(CustomerProfile.self, forKey: .profile)
        try super.init(from: decoder)

    }
    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? GetCustomerProfileResponse {
            return profile == rhs.profile &&
            super.equals(rhs)
        }
        return false
    }
}
