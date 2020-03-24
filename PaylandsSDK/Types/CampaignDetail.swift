//
// Created by apokdev on 3/5/20.
//

import Foundation

struct CampaignDetail: Codable {
    private(set) var id: Int
    private(set) var uuid: UUID
    private(set) var description: String
    private(set) var serviceUUID: UUID
    private(set) var clientID: Int
    private(set) var clientUUID: UUID
    private(set) var type: MoToCampaignType
    private(set) var status: MoToCampaignStatus
    private(set) var entry: CampaignEntry
    private(set) var createdAt: CustomDate<DateTime>
    private(set) var expiresAt: CustomDate<DateTime>
    private(set) var subject: String
    private(set) var filename: String
    private(set) var error: String?

}

