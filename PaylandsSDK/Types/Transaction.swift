//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Transaction: Codable {
    private(set) var uuid: UUID
    private(set) var created: CustomDate<DateTimeFull>
    private(set) var createdFromClientTimezone: CustomDate<DateTimeFull>
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

