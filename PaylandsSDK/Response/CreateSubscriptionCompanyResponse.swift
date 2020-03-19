//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateSubscriptionCompanyResponse: BaseResponse {
    private(set) var company: SubscriptionCompany

    private enum CodingKeys: String, CodingKey {
        case company
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try company = container.decode(SubscriptionCompany.self, forKey: .company)
        try super.init(from: decoder)

    }
}
