//
// Created by apokdev on 3/5/20.
//

import Foundation

struct SubscriptionProduct: Codable {
     private(set) var name: String
     private(set) var externalId: String
     private(set) var sandbox: Bool
     private(set) var notificationUrl: String? = nil
     private(set) var createdAt: String
     private(set) var updatedAt: String


    enum CodingKeys: String, CodingKey {
        case name, sandbox
        case externalId = "external_id"
        case notificationUrl = "notification_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}

extension SubscriptionProduct: Equatable  {
    static func == (a: SubscriptionProduct, b: SubscriptionProduct) -> Bool {
        return a.name == b.name &&
            a.externalId == b.externalId &&
            a.sandbox == b.sandbox &&
            a.notificationUrl == b.notificationUrl &&
            a.createdAt == b.createdAt &&
            a.updatedAt == b.updatedAt
    }
}
