//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Card: Codable {
    private(set) var object: String
    private(set) var uuid: String
    private(set) var type: CardType
    private(set) var token: String
    private(set) var brand: String
    private(set) var country: String
    private(set) var holder: String
    private(set) var bin: String
    private(set) var last4: String
    private(set) var expireMonth: String
    private(set) var expireYear: String
    private(set) var additional: String? = nil
    private(set) var bank: String
    private(set) var validationDate: String? = nil
    private(set) var prepaid: String? = nil

    enum CodingKeys: String, CodingKey {
        case object, uuid, type, token, brand, country, holder, bin, last4, additional, bank, prepaid
        case expireMonth = "expire_month"
        case expireYear = "expire_year"
        case validationDate = "validation_date"
    }

}

extension Card: Equatable  {
    static func == (a: Card, b: Card) -> Bool {
        return a.object == b.object &&
        a.uuid == b.uuid &&
        a.type == b.type &&
        a.token == b.token &&
        a.brand == b.brand &&
        a.country == b.country &&
        a.holder == b.holder &&
        a.bin == b.bin &&
        a.last4 == b.last4 &&
        a.expireMonth == b.expireMonth &&
        a.expireYear == b.expireYear &&
        a.additional == b.additional &&
        a.bank == b.bank &&
        a.validationDate == b.validationDate &&
        a.prepaid == b.prepaid
    }
}
