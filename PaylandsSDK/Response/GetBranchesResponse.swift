//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetBranchesResponse: BaseResponse {
    private(set) var branches: [Branch]

    private enum CodingKeys: String, CodingKey {
        case branches
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try branches = container.decode([Branch].self, forKey: .branches)
        try super.init(from: decoder)

    }
}
