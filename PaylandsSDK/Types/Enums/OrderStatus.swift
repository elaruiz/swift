//
// Created by apokdev on 3/5/20.
//

import Foundation

enum OrderStatus: String, Codable {
    case BLACKLISTED,
         CANCELLED,
         CREATED,
         EXPIRED,
         FRAUD,
         PARTIALLY_REFUNDED,
         PENDING_CONFIRMATION,
         REFUNDED,
         REFUSED,
         SUCCESS,
         PARTIALLY_CONFIRMED,
         PENDING_CARD,
         PENDING_PROCESSOR_RESPONSE,
         PENDING_3DS_RESPONSE

}
