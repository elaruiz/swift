//
// Created by apokdev on 3/10/20.
//

import Foundation

class ErrorResponse {
    private(set) var message: String
    private(set) var code: Int
    private(set) var details: String

    private enum CodingKeys: String, CodingKey {
        case code, message, details
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try code = container.decode(Int.self, forKey: .code)
        try message = container.decode(String.self, forKey: .message)
        try details = container.decode(String.self, forKey: .details)

    }
}
