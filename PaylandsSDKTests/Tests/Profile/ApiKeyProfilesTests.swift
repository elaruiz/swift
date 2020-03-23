//
//  ApiKeyProfilesTests.swift
//  PaylandsSDKTests
//
//  Created by user168661 on 3/23/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import XCTest

class ApiKeyProfilesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetApiKeyProfilesSuccess() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        PaylandsClientMock.shared.getApiKeyProfiles() { (result: Result<ApiKeyProfilesResponse, HTTPNetworkError>) in
        switch result {
            case .success(let response):
                let profiles = ApiKeyProfilesResponse(
                            message: "OK",
                             code: 200,
                             currentTime: "2019-05-30T12:55:48+0200",
                             profiles: [
                               "payment",
                               "refund",
                               "readonly",
                               "card",
                               "tokenize",
                               "moto",
                               "batch_authorization",
                               "batch_refund",
                               "keyentry"
                             ])
                print(response.profiles)
                XCTAssertEqual(profiles, response)
            case .failure(let error):
                print(error.localizedDescription)
            
            }
        }
    }


}
