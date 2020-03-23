//
// Created by apokdev on 3/10/20.
//

import Foundation

class RemoveCustomerAccountResponse: BaseResponse {
    private(set) var customerAccount: Account

    init(message: String, code: Int, currentTime: String? = nil, order: Order, client: Client? = nil) {
        self.order = order
        self.client = client
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case customerAccount = "customer_account"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try customerAccount = container.decode(Account.self, forKey: .customerAccount)
        try super.init(from: decoder)

    }
}
