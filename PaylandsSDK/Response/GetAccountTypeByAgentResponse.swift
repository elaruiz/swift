//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetAccountTypeByAgentResponse: BaseResponse {
    private(set) var accounts: [String]

    private enum CodingKeys: String, CodingKey {
        case accounts
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try accounts = container.decode([String].self, forKey: .accounts)
        try super.init(from: decoder)

    }
}
