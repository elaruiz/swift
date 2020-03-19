//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Account: Codable {
    private(set) var uuid: UUID
    private(set) var accountType: AccountType
    private(set) var accountNumber: String

    enum CodingKeys: String, CodingKey {
        case uuid
        case accountType = "account_type"
        case accountNumber = "account_number"
    }

}



