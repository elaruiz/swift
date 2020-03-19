//
// Created by apokdev on 3/10/20.
//

import Foundation

class BaseResponse: Decodable {
    private(set) var code: Int
    private(set) var message: String
    private(set) var currentTime: CustomDate<DateTimeFull>? = nil

    private enum CodingKeys: String, CodingKey {
        case code, message
        case currentTime = "current_time"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try code = container.decode(Int.self, forKey: .code)
        try message = container.decode(String.self, forKey: .message)
        try currentTime = container.decodeIfPresent(CustomDate<DateTimeFull>.self, forKey: .currentTime)

    }
}
