//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateSubscriptionProductResponse: BaseResponse {
    private(set) var product: SubscriptionProduct

    init(message: String, code: Int, currentTime: String? = nil, product: SubscriptionProduct) {
        self.product = product
        super.init(message: message, code: code, currentTime: currentTime)
    }

    private enum CodingKeys: String, CodingKey {
        case product
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try product = container.decode(SubscriptionProduct.self, forKey: .product)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? CreateSubscriptionProductResponse {
            return product == rhs.product && super.equals(rhs)
        }
        return false
    }
}
