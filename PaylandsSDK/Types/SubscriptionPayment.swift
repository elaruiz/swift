//
// Created by apokdev on 3/5/20.
//

import Foundation

struct SubscriptionPayment: Codable {
    private(set) var id: String
    private(set) var status: PaymentStatus
    private(set) var paymentDate: String
    private(set) var paymentNumber: Int
    private(set) var attempt: Int
    private(set) var amount: Double
    private(set) var paymentDetails: String?
    private(set) var createdAt: String
    private(set) var updatedAt: String


    enum CodingKeys: String, CodingKey {
        case id, status, attempt, amount
        case paymentDate = "payment_date"
        case paymentNumber = "payment_number"
        case paymentDetails = "payment_details"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}

