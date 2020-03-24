//
// Created by apokdev on 3/10/20.
//

import Foundation

class SendRefundsFileResponse: BaseResponse {
    private(set) var errors: [BatchError]

    init(message: String, code: Int, currentTime: String? = nil, errors: [BatchError]) {
        self.errors = errors
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case errors
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try errors = container.decode([BatchError].self, forKey: .errors)
        try super.init(from: decoder)

    }
}
