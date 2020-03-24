//
// Created by apokdev on 3/5/20.
//

import Foundation

struct SubscriptionAdditionalData: Codable {
    private(set) var operative: Operative
    private(set) var cardUUID: String
    private(set) var customerId: String
    private(set) var service: String
    private(set) var additional: String
    private(set) var urlPost: String

    enum CodingKeys: String, CodingKey {
        case operative, service, additional
        case cardUUID = "source_uuid"
        case customerId = "customer_ext_id"
        case urlPost = "url_post"
    }
}

