//
// Created by apokdev on 3/10/20.
//

import Foundation

class SaveCardsResponse: BaseResponse {
    private(set) var cards: [CardItem]

    private enum CodingKeys: String, CodingKey {
        case cards
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try cards = container.decode([CardItem].self, forKey: .cards)
        try super.init(from: decoder)

    }
}
