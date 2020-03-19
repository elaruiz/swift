//
// Created by apokdev on 3/10/20.
//

import Foundation

class RemoveSubscriptionPlanResponse: BaseResponse {
    private(set) var deleted: Int


    private enum CodingKeys: String, CodingKey {
        case deleted
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try deleted = container.decode(Int.self, forKey: .deleted)
        try super.init(from: decoder)

    }
}
