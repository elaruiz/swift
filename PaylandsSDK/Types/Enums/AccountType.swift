//
// Created by apokdev on 3/5/20.
//

import Foundation

enum AccountType: String, Codable {
    case ACCOUNT_NUMBER,
         BUSINESS,
         ACCOUNT_CLABE,
         CARD_NUMBER,
         INTEREST_CHECKING,
         MONEY_MARKET,
         MOBILE_PHONE_NUMBER,
         NOT_USED_FOR_THIS_BANK,
         PERSONAL,
         REGULAR_CHECKING,
         SAVING_ACCOUNT
}
