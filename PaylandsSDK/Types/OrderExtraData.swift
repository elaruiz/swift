//
// Created by apokdev on 3/5/20.
//

import Foundation

struct OrderExtraData: Codable {

    private(set) var payment: Payment

}

extension OrderExtraData: Equatable  {
    static func == (a: OrderExtraData, b: OrderExtraData) -> Bool {
        return a.payment == b.payment
    }
}

