//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Agent: Codable {
    private(set) var region: String
    private(set) var branch: String
    private(set) var state: String
    private(set) var country: String

    enum CodingKeys: String, CodingKey {
        case region = "region_sd"
        case branch = "branch_sd"
        case state = "state_cd"
        case country = "country_cd"
    }

}

extension Agent: Equatable  {
    static func == (a: Agent, b: Agent) -> Bool {
        return a.region == b.region &&
        a.branch == b.branch &&
        a.state == b.state &&
        a.country == b.country
    }
}	}

