//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GetStatesRequest: Encodable {
    private(set) var serviceUUID: UUID
    private(set) var country: String


    enum CodingKeys: String, CodingKey {
        case country
        case serviceUUID = "service_uuid"

    }

}