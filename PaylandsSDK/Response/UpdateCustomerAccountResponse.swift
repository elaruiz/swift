//
// Created by apokdev on 3/10/20.
//

import Foundation

class UpdateCustomerAccountResponse: BaseResponse {
    private(set) var customer: Customer
    private(set) var account: Account

    private enum CodingKeys: String, CodingKey {
        case customer
        case account = "customer_account"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try customer = container.decode(Customer.self, forKey: .customer)
        try account = container.decode(Account.self, forKey: .account)
        try super.init(from: decoder)

    }
}
