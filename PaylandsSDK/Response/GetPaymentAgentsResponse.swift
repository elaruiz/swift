//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetPaymentAgentsResponse: BaseResponse {
    private(set) var agents: [PaymentAgent]

    init(message: String, code: Int, currentTime: String? = nil, agents: [PaymentAgent]) {
        self.agents = agents
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case agents = "paymentAgents"
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try agents = container.decode([PaymentAgent].self, forKey: .agents)
        try super.init(from: decoder)

    }
}
