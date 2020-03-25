//
// Created by apokdev on 3/5/20.
//

import Foundation

struct RecipientAgent: Codable {
    private(set) var agentCode: String
    private(set) var regionCode: String
    private(set) var branch: String

    enum CodingKeys: String, CodingKey {
        case agentCode = "agent_cd"
        case regionCode = "region_cd"
        case branch = "branch_sd"
    }

}

extension RecipientAgent: Equatable  {
    static func == (a: RecipientAgent, b: RecipientAgent) -> Bool {
        return a.agentCode == b.agentCode &&
                a.regionCode == b.regionCode &&
                a.branch == b.branch
    }
}
