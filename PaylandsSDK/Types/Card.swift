//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Card: Codable {
    private(set) var object: String
    private(set) var uuid: UUID
    private(set) var type: CardType
    private(set) var token: String
    private(set) var brand: String
    private(set) var country: String
    private(set) var holder: String
    private(set) var bin: Int
    private(set) var last4: String
    private(set) var expireMonth: String
    private(set) var expireYear: String
    private(set) var additional: String? = nil
    private(set) var bank: String
    private(set) var validationDate: CustomDate<DateTime>? = nil
    private(set) var prepaid: String? = nil

    enum CodingKeys: String, CodingKey {
        case object, uuid, type, token, brand, country, holder, bin, last4, additional, bank, prepaid
        case expireMonth = "expire_month"
        case expireYear = "expire_year"
        case validationDate = "validation_date"
    }

}


