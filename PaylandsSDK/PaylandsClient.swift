//
//  PaylandsClient.swift
//  PaylandsSDK
//
//  Created by user168661 on 3/17/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import Foundation

public struct PaylandsClients: PaylandsClientProtocol {
   
    private(set) var settings: ClientSettings
    private var httpClient: APIClient
    
    public init(_ s: ClientSettings) {
        self.settings = s
        self.httpClient = APIClient(
        baseURL: AppUtility.getBaseURL(env: settings.env),
        apiKey: "myApiKey",
        signature: "mySignature")
    }
    
    
    func getApiKeyProfiles() throws -> ApiKeyProfilesResponse {
        let request = APIRequest(method: .get, path: "api-key/profiles")
        var apiKeyProfile:ApiKeyProfilesResponse?
        self.httpClient.perform(request) { result in
            if let response = try? result().decode(to: ApiKeyProfilesResponse.self) {
                apiKeyProfile = response.body
            }
        }
        return apiKeyProfile!
    }
}
