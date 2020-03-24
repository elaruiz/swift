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

extension Product: Equatable  {
    static func == (a: Product, b: Product) -> Bool {
        return a.serviceCode == b.serviceCode &&
            a.originCountry == b.originCountry &&
            a.originCurrency == b.originCurrency &&
            a.destinationCountry == b.destinationCountry &&
            a.destinationCurrency == b.destinationCurrency &&
            a.paymentType == b.paymentType &&
            a.directedTransaction == b.directedTransaction &&
            a.electronicFunds == b.electronicFunds
    }
}

