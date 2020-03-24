//
// Created by apokdev on 3/5/20.
//

import Foundation

struct OrderExtraData: Codable {

    struct Payment: Codable {
        private(set) var installments: Int
    }

    private(set) var payment: Payment

}

