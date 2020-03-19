//
// Created by apokdev on 3/5/20.
//

import Foundation

enum TransactionStatus: String, Codable {
    case CREATED,
         SUCCESS,
         REFUSED,
         ERROR,
         PENDING,
         CANCELLED
}
