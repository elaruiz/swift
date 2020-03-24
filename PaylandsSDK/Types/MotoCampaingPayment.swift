//
// Created by apokdev on 3/5/20.
//

import Foundation

struct MotoCampaignPayment: Codable {
    private(set) var id: Int
    private(set) var uuid: UUID
    private(set) var detailUUID: String
    private(set) var line: Int
    private(set) var status: MoToCampaignStatus
    private(set) var amount: Double
    private(set) var operative: Operative
    private(set) var secure: Bool
    private(set) var destination: String
    private(set) var createdAt: CustomDate<DateTime>
    private(set) var externalId: String?
    private(set) var additional: String?
    private(set) var urlPost: String?
    private(set) var urlOk: String?
    private(set) var urlKo: String?
    private(set) var cardTemplate: String?
    private(set) var dccTemplate: String?
    private(set) var moToTemplate: String?

}

