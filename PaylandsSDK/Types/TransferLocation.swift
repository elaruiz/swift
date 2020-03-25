//
// Created by apokdev on 3/5/20.
//

import Foundation

struct TransferLocation: Codable {
    private(set) var country: String
    private(set) var currency: String

    enum CodingKeys: String, CodingKey {
        case country = "country_cd"
        case currency = "currency_cd"
    }

}

extension TransferLocation: Equatable  {
    static func == (a: TransferLocation, b: TransferLocation) -> Bool {
        return a.country == b.country &&
                a.currency == b.currency
    }
}