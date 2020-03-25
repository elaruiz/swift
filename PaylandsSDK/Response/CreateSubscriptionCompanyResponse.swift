//
// Created by apokdev on 3/10/20.
//

import Foundation

class CreateSubscriptionCompanyResponse: BaseResponse {
    private(set) var company: SubscriptionCompany

    init(message: String, code: Int, currentTime: String? = nil, company: SubscriptionCompany) {
        self.company = company
        super.init(message: message, code: code, currentTime: currentTime)
    }


    private enum CodingKeys: String, CodingKey {
        case company
    }

    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        try company = container.decode(SubscriptionCompany.self, forKey: .company)
        try super.init(from: decoder)

    }

    override func equals(_ rhs: BaseResponse) -> Bool {
        if let rhs = rhs as? CreateSubscriptionCompanyResponse {
            return company == rhs.company && super.equals(rhs)
        }
        return false
    }
}
