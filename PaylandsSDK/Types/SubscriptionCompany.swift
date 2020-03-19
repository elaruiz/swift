//
// Created by apokdev on 3/5/20.
//

import Foundation

struct SubscriptionCompany: Codable {
     private(set) var name: String
     private(set) var id: String
     private(set) var createdAt: CustomDate<DateTime>
     private(set) var updatedAt: CustomDate<DateTime>


    enum CodingKeys: String, CodingKey {
        case name
        case id = "external_id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}

