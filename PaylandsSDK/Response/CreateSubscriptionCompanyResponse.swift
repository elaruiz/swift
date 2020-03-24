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
}

extension CreateSubscriptionCompanyResponse  {
    static func == (a: CreateSubscriptionCompanyResponse, b: CreateSubscriptionCompanyResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse) &&
        a.company == b.company
    }
}
