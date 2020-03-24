//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Subscription: Codable {
    private(set) var id: String
    private(set) var active: Bool
    private(set) var status: SubscriptionStatus
    private(set) var totalPayment: Double
    private(set) var totalPaymentCharged: Double
    private(set) var paymentAttemptsLimit: Int
    private(set) var firstChargeDate: String
    private(set) var nextChargeDate: String
    private(set) var additionalData: String
    private(set) var createdAt: String
    private(set) var updatedAt: String
    private(set) var plan: SubscriptionPlan
    private(set) var payments: [SubscriptionPayment]


    enum CodingKeys: String, CodingKey {
        case id, active, status
        case totalPayment = "total_payment_number"
        case totalPaymentCharged = "total_payment_charged"
        case paymentAttemptsLimit = "payment_attempts_limit"
        case firstChargeDate = "first_charge_date"
        case nextChargeDate = "next_charge_date"
        case additionalData = "additional_data"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case plan = "plan"
        case payments = "payments"
    }
}

extension Subscription: Equatable  {
    static func == (a: Subscription, b: Subscription) -> Bool {
        return a.id == b.id &&
            a.active == b.active &&
            a.status == b.status &&
            a.totalPayment == b.totalPayment &&
            a.totalPaymentCharged == b.totalPaymentCharged &&
            a.paymentAttemptsLimit == b.paymentAttemptsLimit &&
            a.firstChargeDate == b.firstChargeDate &&
            a.nextChargeDate == b.nextChargeDate &&
            a.additionalData == b.additionalData &&
            a.createdAt == b.createdAt &&
            a.updatedAt == b.updatedAt &&
            a.plan == b.plan &&
            a.payments == b.payments
    }
}

