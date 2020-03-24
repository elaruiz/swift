//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateCustomerAccountResponse: BaseResponse {
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
}

extension CreateCustomerAccountResponse  {
    static func == (a: CreateCustomerAccountResponse, b: CreateCustomerAccountResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.customer == b.customer &&
        a.account == b.account
    }
}
