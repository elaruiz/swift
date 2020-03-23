//
//  HTTPNetworkError.swift
//  PaylandsSDK
//
//  Created by user168661 on 3/23/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import Foundation


enum HTTPNetworkError : LocalizedError {

    case encodingFailed
    case decodingFailed
    case invalidURL
    case authenticationError
    case badRequest(reason: String)
    case pageNotFound
    case requestFailed(reason: String)

    var errorDescription: String? {
        switch self {
        case .encodingFailed:
            return NSLocalizedString("EncodingFailed", value: "Error Found : Parameter Encoding failed.", comment: "")
        case .decodingFailed:
            return NSLocalizedString("DecodingFailed", value: "Error Found : Unable to Decode the data.", comment: "")
        case .invalidURL:
            return NSLocalizedString("InvalidURL", value: "Error Found : The URL is invalid.", comment: "")
        case .authenticationError:
            return NSLocalizedString("AuthenticationError", value: "Error Found : You must be Authenticated", comment: "")
        case .badRequest(let reason):
            return NSLocalizedString("BadRequest", value: "Error Found : \(reason)", comment: "")
        case .pageNotFound:
            return NSLocalizedString("PageNotFound", value:  "Error Found : Page/Route requested not found.", comment: "")
        case .requestFailed(let reason):
            return NSLocalizedString("Failed", value: "UnexpectedError : \(reason)", comment: "")
        }
    }
}
