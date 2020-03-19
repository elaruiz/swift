//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SendRefundsFileRequest: Encodable {
    private(set) var filename: String
    private(set) var data: String
    private(set) var executeAt: Date? = nil


    enum CodingKeys: String, CodingKey {
        case filename, data, executeAt
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(filename, forKey: .filename)
        try container.encode(data, forKey: .data)
        if (self.executeAt != nil) {
            let dateString = DateSimple.dateFormatter.string(from: self.executeAt!)
            try container.encode(dateString, forKey: .executeAt)
        }
    }
    
}