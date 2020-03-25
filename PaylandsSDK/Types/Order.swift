//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Order: Codable {
    private(set) var uuid: UUID
    private(set) var created: String
    private(set) var createdFromClientTimezone: String
    private(set) var amount: Double
    private(set) var currency: String
    private(set) var paid: Bool
    private(set) var safe: Bool
    private(set) var refunded: Int
    private(set) var additional: String
    private(set) var service: String
    private(set) var customer: String?
    private(set) var status: OrderStatus
    private(set) var transactions: [Transaction]
    private(set) var token: String?
    private(set) var ip: String?


    enum CodingKeys: String, CodingKey {
        case uuid, created, amount, currency, paid, safe, refunded, additional, service, customer, status, transactions, token, ip
        case createdFromClientTimezone = "created_from_client_timezone"
    }

}

