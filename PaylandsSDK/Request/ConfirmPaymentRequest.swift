//
// Created by apokdev on 3/9/20.
//

import Foundation

struct ConfirmPaymentRequest: Encodable {
    private(set) var orderUUID: String
    private(set) var amount: Decimal

}
