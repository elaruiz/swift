//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Client: Codable {
    private(set) var uuid: String
}

extension Client: Equatable  {
    static func == (a: Client, b: Client) -> Bool {
        return a.uuid == b.uuid
    }
}
