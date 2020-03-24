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

    private func getJsonData(fileName: String, directory: String) -> Data {
        let url = Bundle(for: PaylandsClientMock.self).url(forResource: fileName, withExtension: "json", subdirectory: directory)
        return try! Data(contentsOf: url!)
    }

    func getApiKeyProfiles(_ result: @escaping (Result<ApiKeyProfilesResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetApiKeyProfilesResponseSuccess", directory: "TestResources/Profile")
        let val = try! self.jsonDecoder.decode(ApiKeyProfilesResponse.self, from: jsonData)
        result(.success(val))
    }

    func getMyApiKeyProfiles(_ result: @escaping (Result<MyApiKeyProfilesResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetMyApiKeyProfilesResponseSuccess", directory: "TestResources/Profile")
        let val = try! self.jsonDecoder.decode(MyApiKeyProfilesResponse.self, from: jsonData)
        result(.success(val))
    }

}

