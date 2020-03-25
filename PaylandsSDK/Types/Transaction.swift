//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Transaction: Codable {
    private(set) var uuid: String
    private(set) var created: String
    private(set) var createdFromClientTimezone: String
    private(set) var operative: Operative
    private(set) var amount: Double
    private(set) var authorization: String
    private(set) var status: TransactionStatus
    private(set) var error: String
    private(set) var antifraud: Antifraud?
    private(set) var card: Card?

    enum CodingKeys: String, CodingKey {
        case uuid, created, operative, amount, authorization, status, error, antifraud
        case card = "source"
        case createdFromClientTimezone = "created_from_client_timezone"
    }

}
extension Transaction: Equatable  {
    static func == (a: Transaction, b: Transaction) -> Bool {
        return a.uuid == b.uuid &&
        a.created == b.created &&
        a.createdFromClientTimezone == b.createdFromClientTimezone &&
        a.operative == b.operative &&
        a.amount == b.amount &&
        a.authorization == b.authorization &&
        a.status == b.status &&
        a.error == b.error &&
        a.antifraud == b.antifraud &&
        a.card == b.card
    }
}

