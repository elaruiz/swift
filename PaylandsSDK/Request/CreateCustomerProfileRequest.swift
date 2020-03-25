//
// Created by apokdev on 3/9/20.
//

import Foundation

struct CreateCustomerProfileRequest: Encodable {
    private(set) var externalId: String
    private(set) var firstName: String
    private(set) var lastName: String
    private(set) var cardholderName: String
    private(set) var documentIdentificationIssuerType: DocumentIdentificationIssuer
    private(set) var documentIdentificationType: DocumentIdentificationType
    private(set) var documentIdentificationNumber: String
    private(set) var phone: Phone? = nil
    private(set) var homePhone: Phone? = nil
    private(set) var workPhone: Phone? = nil
    private(set) var mobilePhone: Phone? = nil
    private(set) var birthdate: Date? = nil
    private(set) var sourceOfFunds: String? = nil
    private(set) var occupation: String? = nil
    private(set) var socialSecurityNumber: String? = nil

    enum CodingKeys: String, CodingKey {
        case externalId,
             firstName,
             lastName,
             cardholderName,
             documentIdentificationIssuerType,
             documentIdentificationType,
             documentIdentificationNumber,
             phone,
             homePhone,
             workPhone,
             mobilePhone,
             birthdate,
             sourceOfFunds,
             occupation,
             socialSecurityNumber
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(externalId, forKey: .externalId)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(cardholderName, forKey: .cardholderName)
        try container.encode(documentIdentificationIssuerType, forKey: .documentIdentificationIssuerType)
        try container.encode(documentIdentificationType, forKey: .documentIdentificationType)
        try container.encode(documentIdentificationNumber, forKey: .documentIdentificationNumber)
        try container.encode(phone, forKey: .phone)
        try container.encode(homePhone, forKey: .homePhone)
        try container.encode(workPhone, forKey: .workPhone)
        try container.encode(mobilePhone, forKey: .mobilePhone)
        if (self.birthdate != nil) {
            let dateString = DateSimple.dateFormatter.string(from: self.birthdate!)
            try container.encode(dateString, forKey: .birthdate)
        }
        try container.encode(sourceOfFunds, forKey: .sourceOfFunds)
        try container.encode(occupation, forKey: .occupation)
        try container.encode(socialSecurityNumber, forKey: .socialSecurityNumber)
    }

}