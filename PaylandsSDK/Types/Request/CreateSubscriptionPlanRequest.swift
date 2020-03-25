//
// Created by apokdev on 3/9/20.
//

import Foundation

struct CreateSubscriptionPlanRequest: Encodable {
    private(set) var name: String
    private(set) var externalId: String
    private(set) var productId: String
    private(set) var amount: Decimal = 0.0
    private(set) var interval: Int = 0
    private(set) var intervalType: SubscriptionInterval
    private(set) var trialAvailable: Bool? = nil
    private(set) var intervalOffset: Int? = nil
    private(set) var intervalOffsetType: SubscriptionInterval? = nil


    enum CodingKeys: String, CodingKey {
        case name,
             externalId,
             amount,
             interval,
             intervalType,
             trialAvailable,
             intervalOffset,
             intervalOffsetType
        case productId = "product"

    }

//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(subject, forKey: .subject)
//        try container.encode(description, forKey: .description)
//        try container.encode(serviceUUID, forKey: .serviceUUID)
//        try container.encode(type, forKey: .type)
//        try container.encode(file, forKey: .file)
//        try container.encode(filename, forKey: .filename)
//        let dateString = DateSimple.dateFormatter.string(from: self.expiresAt)
//        try container.encode(dateString, forKey: .expiresAt)
//    }

}