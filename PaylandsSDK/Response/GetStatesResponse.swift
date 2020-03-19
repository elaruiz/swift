//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetStatesResponse: BaseResponse {
    private(set) var states: [State]


    private enum CodingKeys: String, CodingKey {
        case states
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try states = container.decode([State].self, forKey: .states)
        try super.init(from: decoder)

    }
}
