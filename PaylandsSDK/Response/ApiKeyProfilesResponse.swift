//
// Created by apokdev on 3/10/20.
//

import Foundation

class ApiKeyProfilesResponse: BaseResponse {
    private(set) var profiles = [String]()

    private enum CodingKeys: String, CodingKey {
        case profiles
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try profiles = container.decode([String].self, forKey: .profiles)
        try super.init(from: decoder)
    }
}
