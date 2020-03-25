//
// Created by apokdev on 3/5/20.
//

import Foundation

struct SubscriptionPlan: Codable {
     private(set) var name: String
     private(set) var externalId: String
     private(set) var amount: Double
     private(set) var interval: Int
     private(set) var subscriptionInterval: SubscriptionInterval
     private(set) var trialAvailable: Bool? = nil
     private(set) var intervalOffset: Int?
     private(set) var subscriptionIntervalOffset: SubscriptionInterval?
     private(set) var createdAt: String
     private(set) var updatedAt: String
     private(set) var product: SubscriptionProduct



    enum CodingKeys: String, CodingKey {
        case name, amount, interval, product
        case externalId = "external_id"
        case subscriptionInterval = "interval_type"
        case trialAvailable = "trial_available"
        case intervalOffset = "interval_offset"
        case subscriptionIntervalOffset = "interval_offset_type"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}

extension SubscriptionPlan: Equatable  {
    static func == (a: SubscriptionPlan, b: SubscriptionPlan) -> Bool {
        return a.name == b.name &&
                a.externalId == b.externalId &&
                a.amount == b.amount &&
                a.interval == b.interval &&
                a.subscriptionInterval == b.subscriptionInterval &&
                a.trialAvailable == b.trialAvailable &&
                a.intervalOffset == b.intervalOffset &&
                a.subscriptionIntervalOffset == b.subscriptionIntervalOffset &&
                a.createdAt == b.createdAt &&
                a.updatedAt == b.updatedAt &&
                a.product == b.product
    }
}
