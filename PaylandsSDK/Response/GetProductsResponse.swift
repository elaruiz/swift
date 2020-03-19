//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetProductsResponse: BaseResponse {
    private(set) var products: [Product]


    private enum CodingKeys: String, CodingKey {
        case products
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try products = container.decode([Product].self, forKey: .products)
        try super.init(from: decoder)

    }
}

