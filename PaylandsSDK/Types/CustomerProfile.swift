//
// Created by apokdev on 3/5/20.
//

import Foundation

struct CustomerProfile: Codable {
    private(set) var firstName: String
    private(set) var lastName: String
    private(set) var cardHolderName: String
    private(set) var documentIdentificationIssuer: DocumentIdentificationIssuer
    private(set) var documentIdentificationType: DocumentIdentificationType
    private(set) var documentIdentificationNumber: String
    private(set) var email: String?
    private(set) var phone: Phone?
    private(set) var homePhone: Phone?
    private(set) var workPhone: Phone?
    private(set) var mobilePhone: Phone?
    private(set) var birthdate: String?
    private(set) var sourceOfFunds: String?
    private(set) var occupation: String?
    private(set) var socialSecurityNumber: String?
    private(set) var createdAt: String
    private(set) var updatedAt: String

    enum CodingKeys: String, CodingKey {
        case email, phone, birthdate, occupation
        case firstName = "first_name"
        case lastName = "last_name"
        case cardHolderName = "cardholder_name"
        case documentIdentificationIssuer = "document_identification_issuer_type"
        case documentIdentificationType = "document_identification_type"
        case documentIdentificationNumber = "document_identification_number"
        case homePhone = "home_phone"
        case workPhone = "work_phone"
        case mobilePhone = "mobile_phone"
        case sourceOfFunds = "source_of_funds"
        case socialSecurityNumber = "social_security_number"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}

extension CustomerProfile: Equatable  {
    static func == (a: CustomerProfile, b: CustomerProfile) -> Bool {
        return
        a.firstName == b.firstName &&
        a.lastName == b.lastName &&
        a.cardHolderName == b.cardHolderName &&
        a.documentIdentificationIssuer == b.documentIdentificationIssuer &&
        a.documentIdentificationType == b.documentIdentificationType &&
        a.documentIdentificationNumber == b.documentIdentificationNumber &&
        a.email == b.email &&
        a.phone == b.phone &&
        a.homePhone == b.homePhone &&
        a.workPhone == b.workPhone &&
        a.mobilePhone == b.mobilePhone &&
        a.birthdate == b.birthdate &&
        a.sourceOfFunds == b.sourceOfFunds &&
        a.occupation == b.occupation &&
        a.socialSecurityNumber == b.socialSecurityNumber &&
        a.createdAt == b.createdAt &&
        a.updatedAt == b.updatedAt
    }
}

