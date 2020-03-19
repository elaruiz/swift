//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetOrdersResponse: BaseResponse {
    private(set) var count: Int
    private(set) var transactions: [Transaction]


    private enum CodingKeys: String, CodingKey {
        case count, transactions
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try count = container.decode(Int.self, forKey: .count)
        try transactions = container.decode([Transaction].self, forKey: .transactions)
        try super.init(from: decoder)

    }
}
