//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetSubscriptionProductsResponse: BaseResponse {
    private(set) var products: [SubscriptionProduct]

    init(message: String, code: Int, currentTime: String? = nil, products: [SubscriptionProduct]) {
        self.products = products
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case products
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try products = container.decode([SubscriptionProduct].self, forKey: .products)
        try super.init(from: decoder)

    }
}
