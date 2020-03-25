//
// Created by apokdev on 3/10/20.
//

import Foundation

class UpdateCustomerAccountResponse: BaseResponse {
    private(set) var customer: Customer
    private(set) var account: Account

    init(message: String, code: Int, currentTime: String? = nil, customer: Customer, account: Account) {
        self.customer = customer
        self.account = account
        super.init(message: message, code: code, currentTime: currentTime)
    }

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

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? UpdateCustomerAccountResponse {
            return customer == rhs.customer &&
            account == rhs.account &&
            super.equals(rhs)
        }
        return false
    }
}
