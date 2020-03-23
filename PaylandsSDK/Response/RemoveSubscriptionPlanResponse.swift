//
// Created by apokdev on 3/10/20.
//

import Foundation

class RemoveSubscriptionPlanResponse: BaseResponse {
    private(set) var deleted: Int

    init(message: String, code: Int, currentTime: String? = nil, deleted: Int) {
        self.deleted = deleted
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case deleted
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try deleted = container.decode(Int.self, forKey: .deleted)
        try super.init(from: decoder)

    }
}
