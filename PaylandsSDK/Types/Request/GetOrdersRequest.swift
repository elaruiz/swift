//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GetOrdersRequest: Encodable {
    var terminal: Int = 0
    var start: Date? = nil
    var end: Date? = nil

    enum CodingKeys: String, CodingKey {
        case terminal, start, end
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        if (self.start != nil) {
            let dateString = DateSimple.dateFormatter.string(from: self.start!)
            try container.encode(dateString, forKey: .start)
        }
        if (self.end != nil) {
            let dateString = DateSimple.dateFormatter.string(from: self.end!)
            try container.encode(dateString, forKey: .end)
        }
        try container.encode(terminal, forKey: .terminal)
    }

}