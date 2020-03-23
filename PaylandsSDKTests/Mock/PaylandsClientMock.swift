//
// Created by Daniela Ruiz on 21/3/2020.
//

import Foundation
import PaylandsSDK

public class PaylandsClientMock: PaylandsClientProtocol {

    public static let shared = PaylandsClientMock()

    private let jsonDecoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        return jsonDecoder
    }()
    
    func getApiKeyProfiles(_ result: @escaping (Result<ApiKeyProfilesResponse, HTTPNetworkError>) -> Void) {
        let url = Bundle(for: PaylandsClientMock.self).url(forResource: "GetApiKeyProfilesResponseSuccess", withExtension: "json", subdirectory: "TestResources/Profile")
        let jsonData = try! Data(contentsOf: url!)
        let val = try! self.jsonDecoder.decode(ApiKeyProfilesResponse.self, from: jsonData)
        result(.success(val))
        
    }

  /*  func getMyApiKeyProfile(_ result: @escaping (Result<MyApiKeyProfileResponse, HTTPNetworkError>) -> Void) {
        let jsonData = """
                       {
                         "message": "OK",
                         "code": 200,
                         "current_time": "2019-05-30T12:55:48+0200",
                         "profiles": [
                           "payment",
                           "readonly",
                           "tokenize",
                           "batch",
                           "keyentry"
                         ],
                         "is_pci": true
                       }

                       """.data(using: .utf8)!

        let val = try! self.jsonDecoder.decode(MyApiKeyProfileResponse.self, from: jsonData)
        result(.success(val))
    }

    func createMotoCampaign(_ result: @escaping (Result<CreateMotoCampaignResponse, HTTPNetworkError>) -> Void) {
        let jsonData = """
                          {
                            "message": "OK",
                            "code": 200,
                            "current_time": "2019-05-30T12:52:54+0200",
                            "detail": {
                              "id": 21,
                              "uuid": "CFD6A322-47F4-4AA8-8208-B8AAE02D6C87",
                              "description": "some description",
                              "serviceUUID": "60A1F4C0-CC58-47A9-A0B9-868F9EF29045",
                              "clientID": 1,
                              "clientUUID": "B8A48789-8AF0-47D1-9116-35AB0A941121",
                              "type": "MAIL",
                              "status": "PENDING",
                              "entry": "WEBSERVICE",
                              "createdAt": "2019-05-30 12:52:54",
                              "expiresAt": "2019-04-01 00:00:00",
                              "subject": "te223st",
                              "filename": "filename.csv",
                              "error": null
                            },
                            "payments": [
                              {
                                "id": 774,
                                "uuid": "0297A7B1-5506-49EF-836B-1E2F04C6D179",
                                "detailUUID": "e7bfe6f6-ea0e-4121-a85b-526396af1e03",
                                "line": 2,
                                "status": "PENDING",
                                "amount": 47,
                                "operative": "AUTHORIZATION",
                                "secure": false,
                                "destination": "lchessell0@fastcompany.com",
                                "createdAt": "2019-05-30 12:52:54",
                                "externalID": null,
                                "additional": null,
                                "urlPost": "http://wikimedia.org",
                                "urlOk": "https://imgur.com/lobortis.aspx",
                                "urlKo": "https://walmart.com/varius.png",
                                "cardTemplate": "3FA633A9-0F04-4EDD-B32E-4D56E1B0761D",
                                "dccTemplate": null,
                                "moToTemplate": null
                              },
                              {
                                "id": 775,
                                "uuid": "69D9D760-0F03-4083-9B5D-67C6475695B2",
                                "detailUUID": "e7bfe6f6-ea0e-4121-a85b-526396af1e03",
                                "line": 3,
                                "status": "PENDING",
                                "amount": 5,
                                "operative": "DEFERRED",
                                "secure": false,
                                "destination": "jmedeway1@angelfire.com",
                                "createdAt": "2019-05-30 12:52:54",
                                "externalID": null,
                                "additional": null,
                                "urlPost": "https://weebly.com",
                                "urlOk": "http://hud.gov/consequat.xml",
                                "urlKo": "https://1688.com/quisque/erat/eros/viverra.jsp",
                                "cardTemplate": null,
                                "dccTemplate": null,
                                "moToTemplate": null
                              }
                            ]
                          }
                         """.data(using: .utf8)!

        let val = try! self.jsonDecoder.decode(MyApiKeyProfileResponse.self, from: jsonData)
        result(.success(val))
    }*/

}

