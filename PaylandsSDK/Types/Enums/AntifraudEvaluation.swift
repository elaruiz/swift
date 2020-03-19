//
// Created by apokdev on 3/12/20.
//

import Foundation

enum AntifraudEvaluation: String, Codable {
    case NONE,
         RISKY,
         FRAUD,
         WHITELISTED,
         BLACKLISTED
}
