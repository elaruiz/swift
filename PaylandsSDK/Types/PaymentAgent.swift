//
// Created by apokdev on 3/5/20.
//

import Foundation

struct PaymentAgent: Codable {
    private(set) var code: String
    private(set) var description: String
}
extension PaymentAgent: Equatable  {
    static func == (a: PaymentAgent, b: PaymentAgent) -> Bool {
        return a.code == b.code &&
        a.description == b.description
    }
}
