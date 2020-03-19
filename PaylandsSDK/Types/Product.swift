//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Product: Codable {
     private(set) var serviceCode: String
     private(set) var originCountry: String
     private(set) var originCurrency: String
     private(set) var destinationCountry: String
     private(set) var destinationCurrency: String
     private(set) var paymentType: PaymentTypeCode
     private(set) var directedTransaction: String
     private(set) var electronicFunds: String



    enum CodingKeys: String, CodingKey {
        case serviceCode
        case originCountry = "originCountryCode"
        case originCurrency = "originCurrencyCode"
        case destinationCountry = "destinationCountryCode"
        case destinationCurrency = "destinationCurrencyCode"
        case paymentType = "paymentTypeCode"
        case directedTransaction = "directedTransactionCode"
        case electronicFunds = "electronicFundsCode"
    }
}

