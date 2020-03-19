//
// Created by apokdev on 3/5/20.
//

import Foundation

enum DocumentIdentificationType: String, Codable {
    case ALIEN_REGISTRATION_CARD,
         ELECTOR_CREDENTIAL,
         FISCAL_IDENTIFICATION_CODE,
         ORIGIN_COUNTRY_IDENTIFICATION_CODE,
         FOREIGN_IDENTIFICATION_DOCUMENT,
         NATIONAL_IDENTITY_DOCUMENT,
         OTHER_PHYSICAL_PERSON_DOCUMENTS,
         DRIVER_LICENSE,
         CONSULAR_REGISTRATION,
         UNDER_AGE,
         RESIDENCE_CARD,
         TAX_IDENTIFICATION_NUMBER,
         NON_DRIVER_LICENSE_PHOTO_ID,
         VALID_PASSPORT,
         DIPLOMAT_IDENTITY_CARD,
         US_GOVERNMENT_ISSUER_ID,
         UNIQUE_ID_ISSUED_BY_MT
}
