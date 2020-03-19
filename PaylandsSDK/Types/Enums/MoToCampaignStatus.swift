//
// Created by apokdev on 3/5/20.
//

import Foundation

enum MoToCampaignStatus: String, Codable {
    case PENDING,
         COMPLETED,
         ERROR_CREATING,
         ERROR_SENDING
}
