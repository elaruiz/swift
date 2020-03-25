//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SubscribeCustomerRequest: Encodable {
    private(set) var customerId: String
    private(set) var planId: String
    private(set) var totalPaymentNumber: Int
    private(set) var paymentAttemptsLimit: Int
    private(set) var initialDate: Date? = Date()
    private(set) var additionalData: SubscriptionAdditionalData


    enum CodingKeys: String, CodingKey {
        case totalPaymentNumber, paymentAttemptsLimit, additionalData, initialDate
        case customerId = "customer"
        case planId = "plan_id"
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(customerId, forKey: .customerId)
        try container.encode(planId, forKey: .planId)
        try container.encode(totalPaymentNumber, forKey: .totalPaymentNumber)
        try container.encode(paymentAttemptsLimit, forKey: .paymentAttemptsLimit)
        try container.encode(additionalData, forKey: .additionalData)
        if (self.initialDate != nil) {
            let dateString = DateSimple.dateFormatter.string(from: self.initialDate!)
            try container.encode(dateString, forKey: .initialDate)
        }
    }
    
}