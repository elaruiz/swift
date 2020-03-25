//
// Created by apokdev on 3/5/20.
//

import Foundation

struct MotoCampaignPayment: Codable {
    private(set) var id: Int
    private(set) var uuid: String
    private(set) var detailUUID: String
    private(set) var line: Int
    private(set) var status: MoToCampaignStatus
    private(set) var amount: Double
    private(set) var operative: Operative
    private(set) var secure: Bool
    private(set) var destination: String
    private(set) var createdAt: String
    private(set) var externalId: String?
    private(set) var additional: String?
    private(set) var urlPost: String?
    private(set) var urlOk: String?
    private(set) var urlKo: String?
    private(set) var cardTemplate: String?
    private(set) var dccTemplate: String?
    private(set) var moToTemplate: String?

}
extension MotoCampaignPayment: Equatable  {
    static func == (a: MotoCampaignPayment, b: MotoCampaignPayment) -> Bool {
        return a.id == b.id &&
        a.uuid == b.uuid &&
        a.detailUUID == b.detailUUID &&
        a.line == b.line &&
        a.status == b.status &&
        a.amount == b.amount &&
        a.operative == b.operative &&
        a.secure == b.secure &&
        a.destination == b.destination &&
        a.createdAt == b.createdAt &&
        a.externalId == b.externalId &&
        a.additional == b.additional &&
        a.urlPost == b.urlPost &&
        a.urlOk == b.urlOk &&
        a.urlKo == b.urlKo &&
        a.cardTemplate == b.cardTemplate &&
        a.dccTemplate == b.dccTemplate &&
        a.moToTemplate == b.moToTemplate
    }
}
