//
// Created by apokdev on 3/10/20.
//

import Foundation

class BaseResponse: Decodable {
    private(set) var code: Int
    private(set) var message: String
    private(set) var currentTime: String? = nil

    init(message: String, code: Int, currentTime: String? = nil) {
        self.message = message
        self.code = code
        self.currentTime = currentTime
    }

    private enum CodingKeys: String, CodingKey {
        case code, message
        case currentTime = "current_time"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try code = container.decode(Int.self, forKey: .code)
        try message = container.decode(String.self, forKey: .message)
        try currentTime = container.decodeIfPresent(String.self, forKey: .currentTime)

    }
}

extension BaseResponse: Equatable {
    static func == (a: BaseResponse, b: BaseResponse) -> Bool {
        return a.message == b.message &&
        a.code == b.code &&
        a.currentTime == b.currentTime
    }
}
