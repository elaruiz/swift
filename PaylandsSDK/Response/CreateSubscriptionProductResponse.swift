//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateSubscriptionProductResponse: BaseResponse {
    private(set) var product: SubscriptionProduct

    private enum CodingKeys: String, CodingKey {
        case product
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try product = container.decode(SubscriptionProduct.self, forKey: .product)
        try super.init(from: decoder)

    }
}
