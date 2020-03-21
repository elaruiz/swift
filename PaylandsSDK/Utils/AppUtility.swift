//
//  AppUtility.swift
//  PaylandsSDK
//
//  Created by user168661 on 3/19/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import Foundation

class AppUtility {
    
    public static func getBaseURL(env: Environment) -> String {
        var baseURL = ""
        switch env {
        case .SANDBOX:
            baseURL = "https://api.paylands.com/v1/sandbox"
        default:
            baseURL = "https://api.paylands.com/v1"
        }
        return baseURL
    }
}
