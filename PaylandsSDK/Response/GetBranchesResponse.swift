//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetBranchesResponse: BaseResponse {
    private(set) var branches: [Branch]

    init(message: String, code: Int, currentTime: String? = nil, branches: [Branch]) {
        self.branches = branches
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case branches
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try branches = container.decode([Branch].self, forKey: .branches)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? GetBranchesResponse {
            return branches == rhs.branches &&
            super.equals(rhs)
        }
        return false
    }
}
