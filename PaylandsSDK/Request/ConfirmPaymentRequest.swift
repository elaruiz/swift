//
// Created by apokdev on 3/9/20.
//

import Foundation

struct ConfirmPaymentRequest: Encodable {
    private(set) var orderUUID: UUID
    private(set) var amount: Decimal

}
