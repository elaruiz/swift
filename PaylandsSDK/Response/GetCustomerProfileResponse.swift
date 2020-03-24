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
}

extension GetCustomerProfileResponse  {
    static func == (a: GetCustomerProfileResponse, b: GetCustomerProfileResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.profile == b.profile
    }
}
