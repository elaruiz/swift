//
// Created by apokdev on 3/10/20.
//

import Foundation

class ApiKeyProfilesResponse: BaseResponse {
    private(set) var profiles = [String]()

    init(message: String, code: Int, currentTime: String? = nil, profiles: [String] = [String]()) {
        self.profiles = profiles
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case profiles
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try profiles = container.decode([String].self, forKey: .profiles)
        try super.init(from: decoder)
    }
    
    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? ApiKeyProfilesResponse {
            return profiles == rhs.profiles && super.equals(rhs)
        }
        return false
    }
}

