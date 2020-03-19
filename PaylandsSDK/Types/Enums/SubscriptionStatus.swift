//
// Created by apokdev on 3/5/20.
//

import Foundation

enum SubscriptionStatus: String, Codable {
    case CREATED,
         ISSUED,
         DENIED,
         FAILED_NOTIFICATION,
         PAID
}
