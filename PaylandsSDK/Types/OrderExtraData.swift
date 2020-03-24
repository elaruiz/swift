//
// Created by apokdev on 3/5/20.
//

import Foundation

struct OrderExtraData: Codable {

    struct Payment: Codable, Equatable {
        private(set) var installments: Int

        static func == (a: Payment, b: Payment) -> Bool {
            return a.installments == b.installments
        }
    }
    private(set) var payment: Payment

}

extension OrderExtraData: Equatable  {
    static func == (a: OrderExtraData, b: OrderExtraData) -> Bool {
        return a.payment == b.payment
    }
}

