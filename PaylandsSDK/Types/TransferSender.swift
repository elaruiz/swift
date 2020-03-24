//
// Created by apokdev on 3/5/20.
//

import Foundation

struct TransferSender: Codable {
    private(set) var externalId: String
    private(set) var bankCode: String
    private(set) var addressUUID: UUID
    private(set) var accountUUID: UUID


    enum CodingKeys: String, CodingKey {
        case externalId = "external_id"
        case bankCode = "bank_cd"
        case addressUUID = "address_uuid"
        case accountUUID = "account_uuid"
    }

}

extension TransferSender: Equatable  {
    static func == (a: TransferSender, b: TransferSender) -> Bool {
        return
        a.externalId == b.externalId &&
        a.bankCode == b.bankCode &&
        a.addressUUID == b.addressUUID &&
        a.accountUUID == b.accountUUID
    }
}

