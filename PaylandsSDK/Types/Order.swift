//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Order: Codable {
    private(set) var uuid: String
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
extension Order: Equatable  {
    static func == (a: Order, b: Order) -> Bool {
        return a.uuid == b.uuid &&
        a.created == b.created &&
        a.createdFromClientTimezone == b.createdFromClientTimezone &&
        a.amount == b.amount &&
        a.currency == b.currency &&
        a.paid == b.paid &&
        a.safe == b.safe &&
        a.refunded == b.refunded &&
        a.additional == b.additional &&
        a.service == b.service &&
        a.customer == b.customer &&
        a.status == b.status &&
        a.transactions == b.transactions &&
        a.token == b.token &&
        a.ip == b.ip
    }
}
