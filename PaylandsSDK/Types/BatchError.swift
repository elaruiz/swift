//
// Created by apokdev on 3/5/20.
//

import Foundation

struct BatchError: Codable {
    private(set) var line: Int
    private(set) var msg: String

}

extension BatchError: Equatable  {

    static func == (a: BatchError, b: BatchError) -> Bool {
        return a.line == b.line &&
        a.msg == b.msg
    }
}

