//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetCustomerCardsResponse: BaseResponse {
    private(set) var cards: [Card]

    private enum CodingKeys: String, CodingKey {
        case cards
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try cards = container.decode([Card].self, forKey: .cards)
        try super.init(from: decoder)

    }
}
