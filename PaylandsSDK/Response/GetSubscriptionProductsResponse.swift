//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetSubscriptionProductsResponse: BaseResponse {
    private(set) var products: [SubscriptionProduct]


    private enum CodingKeys: String, CodingKey {
        case products
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try products = container.decode([SubscriptionProduct].self, forKey: .products)
        try super.init(from: decoder)

    }
}
