//
// Created by apokdev on 3/9/20.
//

import Foundation

struct CreateMotoCampaignRequest: Encodable {
    private(set) var subject: String
    private(set) var description: String
    private(set) var serviceUUID: UUID
    private(set) var type: MoToCampaignType
    private(set) var expiresAt: Date
    private(set) var file: String
    private(set) var filename: String? = nil


    enum CodingKeys: String, CodingKey {
        case subject,
             description,
             type,
             expiresAt,
             file,
             filename
        case serviceUUID = "service_uuid"

    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(subject, forKey: .subject)
        try container.encode(description, forKey: .description)
        try container.encode(serviceUUID, forKey: .serviceUUID)
        try container.encode(type, forKey: .type)
        try container.encode(file, forKey: .file)
        try container.encode(filename, forKey: .filename)
        let dateString = DateSimple.dateFormatter.string(from: self.expiresAt)
        try container.encode(dateString, forKey: .expiresAt)
    }

}