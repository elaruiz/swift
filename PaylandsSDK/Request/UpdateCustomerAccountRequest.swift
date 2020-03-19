//
// Created by apokdev on 3/9/20.
//

import Foundation

struct UpdateCustomerAccountRequest: Encodable {
    private(set) var accountUUID: UUID
    private(set) var customerId: String
    private(set) var accountType: AccountType
    private(set) var accountNumber: String


    enum CodingKeys: String, CodingKey {
        case accountUUID = "uuid"
        case customerId = "external_id"
        case accountType, accountNumber
    }
    
}