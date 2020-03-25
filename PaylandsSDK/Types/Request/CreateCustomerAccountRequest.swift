//
// Created by apokdev on 3/9/20.
//

import Foundation

struct CreateCustomerAccountRequest: Encodable {
    private(set) var customerId: String
    private(set) var accountType: AccountType
    private(set) var accountNumber: String
}
