//
// Created by apokdev on 3/10/20.
//

import Foundation

class MyApiKeyProfilesResponse: BaseResponse {
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

extension MyApiKeyProfilesResponse  {
    static func == (a: MyApiKeyProfilesResponse, b: MyApiKeyProfilesResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.profiles == b.profiles
    }
}