//
// Created by apokdev on 3/9/20.
//

import Foundation

struct GetBranchesRequest: Encodable {
    private(set) var serviceUUID: String
    private(set) var payAgentCd: String


    enum CodingKeys: String, CodingKey {
        case payAgentCd
        case serviceUUID = "service_uuid"

    }


}
