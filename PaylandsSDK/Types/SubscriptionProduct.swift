//
// Created by apokdev on 3/5/20.
//

import Foundation

struct SubscriptionProduct: Codable {
     private(set) var name: String
     private(set) var externalId: String
     private(set) var sandbox: Bool
     private(set) var notificationUrl: String? = nil
     private(set) var createdAt: CustomDate<DateTime>
     private(set) var updatedAt: CustomDate<DateTime>


    enum CodingKeys: String, CodingKey {
        case name, sandbox
        case externalId = "external_id"
        case notificationUrl = "notification_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}

