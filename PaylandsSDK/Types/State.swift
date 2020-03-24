//
// Created by apokdev on 3/5/20.
//

import Foundation

struct State: Codable {
    private(set) var state: String
    private(set) var code: String
    private(set) var country: String

    enum CodingKeys: String, CodingKey {
        case state = "state_sd"
        case code = "state_cd"
        case country = "country_cd"
    }

}

extension State: Equatable  {
    static func == (a: State, b: State) -> Bool {
        return a.state == b.state &&
            a.code == b.code &&
            a.country == b.country
    }
}

