//
// Created by apokdev on 3/9/20.
//

import Foundation

struct SetCardDescriptionRequest: Encodable {
    private(set) var sourceUUID: UUID
    private(set) var additional: String? = nil


    enum CodingKeys: String, CodingKey {
        case additional
        case sourceUUID = "source_uuid"
    }
    
}