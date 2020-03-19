//
// Created by apokdev on 3/5/20.
//

import Foundation

enum PaymentStatus: String, Codable {
    case CREATED,
         DENIED,
         FAILED_NOTIFICATION,
         ISSUED,
         PAID

}
