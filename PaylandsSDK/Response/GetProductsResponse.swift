//
// Created by apokdev on 3/10/20.
//

import Foundation

class GetProductsResponse: BaseResponse {
    private(set) var products: [Product]

    init(message: String, code: Int, currentTime: String? = nil, products: [Product]) {
        self.products = products
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case products
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try products = container.decode([Product].self, forKey: .products)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? GetProductsResponse {
            return products  == rhs.products  &&
            super.equals(rhs)
        }
        return false
    }
}
