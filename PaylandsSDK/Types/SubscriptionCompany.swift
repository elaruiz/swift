//
// Created by apokdev on 3/5/20.
//

import Foundation

struct SubscriptionCompany: Codable {
     private(set) var name: String
     private(set) var id: String
     private(set) var createdAt: String
     private(set) var updatedAt: String


    enum CodingKeys: String, CodingKey {
        case name
        case id = "external_id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}

extension SubscriptionCompany: Equatable  {
    static func == (a: SubscriptionCompany, b: SubscriptionCompany) -> Bool {
        return
            a.name == b.name &&
            a.id == b.id &&
            a.createdAt == b.createdAt &&
            a.updatedAt == b.updatedAt
    }
}

