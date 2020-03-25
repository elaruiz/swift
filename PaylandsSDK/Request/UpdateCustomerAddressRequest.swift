//
// Created by apokdev on 3/9/20.
//

import Foundation

struct UpdateCustomerAddressRequest: Encodable {
    private(set) var addressUUID: String
    private(set) var externalId: String
    private(set) var address1: String
    private(set) var address2: String
    private(set) var address3: String
    private(set) var city: String
    private(set) var state: String
    private(set) var country: String
    private(set) var zipCode: String


    enum CodingKeys: String, CodingKey {
        case addressUUID = "uuid"
        case externalId, address1, address2, address3, city, state, country, zipCode
    }
    
}
