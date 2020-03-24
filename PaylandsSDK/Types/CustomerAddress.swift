//
// Created by apokdev on 3/5/20.
//

import Foundation

struct CustomerAddress: Codable {
    private(set) var uuid: UUID
    private(set) var address1: String
    private(set) var address2: String
    private(set) var address3: String
    private(set) var city: String
    private(set) var stateCode: String
    private(set) var country: String
    private(set) var zipCode: String
    private(set) var type: AddressType?
    private(set) var `default`: Bool?

    enum CodingKeys: String, CodingKey {
        case uuid, address1, address2, address3, city, country, type, `default`
        case stateCode = "state_code"
        case zipCode = "zip_code"
    }

}

