//
// Created by apokdev on 3/5/20.
//

import Foundation

struct TransferRecipient: Codable {
    private(set) var externalId: String
    private(set) var addressUUID: UUID
    private(set) var accountUUID: UUID


    enum CodingKeys: String, CodingKey {
        case externalId = "external_id"
        case addressUUID = "address_uuid"
        case accountUUID = "account_uuid"
    }

}

