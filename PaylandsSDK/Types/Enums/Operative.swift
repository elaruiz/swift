//
// Created by apokdev on 3/5/20.
//

import Foundation

enum Operative: String, Codable {
    case AUTHORIZATION,
         DEFERRED,
         PAYOUT,
         TRANSFER,
         REFUND,
         CONFIRMATION,
         CANCELLATION
}
