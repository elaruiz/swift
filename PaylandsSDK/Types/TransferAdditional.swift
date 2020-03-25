//
// Created by apokdev on 3/5/20.
//

import Foundation

struct TransferAdditional: Codable {
    private(set) var reason: String

}

extension TransferAdditional: Equatable  {
    static func == (a: TransferAdditional, b: TransferAdditional) -> Bool {
        return a.reason == b.reason
    }
}
