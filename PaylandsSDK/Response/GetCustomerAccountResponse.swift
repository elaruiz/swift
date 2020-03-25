//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetCustomerAccountResponse: BaseResponse {
    private(set) var account: Account

    init(message: String, code: Int, currentTime: String? = nil, account: Account) {
        self.account = account
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case account = "customer_account"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try account = container.decode(Account.self, forKey: .account)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? GetCustomerAccountResponse {
            return account == rhs.account &&
            super.equals(rhs)
        }
        return false
    }
}
