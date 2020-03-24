//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Customer: Codable {
    private(set) var externalId: String
    private(set) var token: String? = nil

    enum CodingKeys: String, CodingKey {
        case token
        case externalId = "external_id"
    }

}

extension Customer: Equatable  {
    static func == (a: Customer, b: Customer) -> Bool {
        return a.token == b.token &&
        a.externalId == b.externalId
    }
}

