//
// Created by apokdev on 3/9/20.
//

import Foundation

struct CreateCustomerAddressRequest: Encodable {
    private(set) var externalId: String
    private(set) var address1: String
    private(set) var address2: String? = nil
    private(set) var address3: String? = nil
    private(set) var city: String
    private(set) var stateCode: String
    private(set) var country: String
    private(set) var zipCode: String
    private(set) var type: AddressType
    private(set) var `default`: Bool = false
}
