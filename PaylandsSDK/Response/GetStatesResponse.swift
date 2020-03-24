//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetStatesResponse: BaseResponse {
    private(set) var states: [State]

    init(message: String, code: Int, currentTime: String? = nil, states: [State]) {
        self.states = states
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case states
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try states = container.decode([State].self, forKey: .states)
        try super.init(from: decoder)

    }
}

extension GetStatesResponse  {
    static func == (a: GetStatesResponse, b: GetStatesResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.states == b.states
    }
}
