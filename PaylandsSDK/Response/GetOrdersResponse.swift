//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetOrdersResponse: BaseResponse {
    private(set) var count: Int
    private(set) var transactions: [Transaction]

    init(message: String, code: Int, currentTime: String? = nil, count: Int, transactions: [Transaction]) {
        self.count = count
        self.transactions = transactions
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case count, transactions
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try count = container.decode(Int.self, forKey: .count)
        try transactions = container.decode([Transaction].self, forKey: .transactions)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? GetOrdersResponse {
            return count == rhs.count &&
            transactions == rhs.transactions &&
            super.equals(rhs)
        }
        return false
    }
}
