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
}

extension ApiKeyProfilesResponse: Equatable  {
  static func == (lhs: ApiKeyProfilesResponse, rhs: ApiKeyProfilesResponse) -> Bool {
    return lhs.message == rhs.message &&
    lhs.code == rhs.code &&
    lhs.currentTime == rhs.currentTime &&
    lhs.profiles == rhs.profiles
 }
}
