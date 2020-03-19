//
//  PaylandsClient.swift
//  PaylandsSDK
//
//  Created by user168661 on 3/17/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import Foundation

public struct PaylandsClients: PaylandsClientProtocol {
   
    public private(set) var settings: ClientSettings
    public init(settings: ClientSettings) {
        self.settings = settings
    }
    
    func getApiKeyProfiles() throws -> ApiKeyProfilesResponse {
        
    }
}
