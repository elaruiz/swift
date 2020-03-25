//
// Created by apokdev on 3/5/20.
//

import Foundation

struct CampaignDetail: Codable {
    private(set) var id: Int
    private(set) var uuid: String
    private(set) var description: String
    private(set) var serviceUUID: String
    private(set) var clientID: Int
    private(set) var clientUUID: String
    private(set) var type: MoToCampaignType
    private(set) var status: MoToCampaignStatus
    private(set) var entry: CampaignEntry
    private(set) var createdAt: String
    private(set) var expiresAt: String
    private(set) var subject: String
    private(set) var filename: String
    private(set) var error: String?

}

extension CampaignDetail: Equatable  {
    static func == (a: CampaignDetail, b: CampaignDetail) -> Bool {
        return a.id == b.id &&
        a.uuid == b.uuid &&
        a.description == b.description &&
        a.serviceUUID == b.serviceUUID &&
        a.clientID == b.clientID &&
        a.clientUUID == b.clientUUID &&
        a.type == b.type &&
        a.status == b.status &&
        a.entry == b.entry &&
        a.createdAt == b.createdAt &&
        a.expiresAt == b.expiresAt &&
        a.subject == b.subject &&
        a.filename == b.filename &&
        a.error == b.error
    }
}
