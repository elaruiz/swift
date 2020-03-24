//
// Created by apokdev on 3/10/20.
//

import Foundation

class SaveCardsResponse: BaseResponse {
    private(set) var cards: [CardItem]

    init(message: String, code: Int, currentTime: String? = nil, cards: [CardItem]) {
        self.cards = cards
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case cards
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try cards = container.decode([CardItem].self, forKey: .cards)
        try super.init(from: decoder)

    }
}

extension SaveCardsResponse  {
    static func == (a: SaveCardsResponse, b: SaveCardsResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.cards == b.cards
    }
}