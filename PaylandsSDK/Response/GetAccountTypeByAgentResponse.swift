//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetAccountTypeByAgentResponse: BaseResponse {
    private(set) var accounts: [String]

    init(message: String, code: Int, currentTime: String? = nil, accounts: [String]) {
        self.accounts = accounts
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case accounts
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try accounts = container.decode([String].self, forKey: .accounts)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? GetAccountTypeByAgentResponse {
            return accounts == rhs.accounts &&
            super.equals(rhs)
        }
        return false
    }
}
