//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Phone: Codable {
    private(set) var prefix: String? = nil
    private(set) var number: String? = nil
}
extension Phone: Equatable  {
    static func == (a: Phone, b: Phone) -> Bool {
        return a.prefix == b.prefix &&
                a.number == b.number
    }
}