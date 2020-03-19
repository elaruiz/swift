//
// Created by apokdev on 3/6/20.
//

import Foundation

protocol HasDateFormatter {
    static var dateFormatter: DateFormatter { get }
}

struct CustomDate<E:HasDateFormatter>: Codable {
    let value: Date
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let text = try container.decode(String.self)
        guard let date = E.dateFormatter.date(from: text) else {
            throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: [], debugDescription: "Invalid date format"))
        }
        self.value = date
    }
}

