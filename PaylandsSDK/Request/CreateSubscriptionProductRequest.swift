//
// Created by apokdev on 3/9/20.
//

import Foundation

struct CreateSubscriptionProductRequest: Encodable {
    private(set) var name: String
    private(set) var externalId: String
    private(set) var sandbox: Bool = false
    private(set) var notificationUrl: String


}