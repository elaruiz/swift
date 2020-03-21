//
// Created by Daniela Ruiz on 17/3/2020.
//

import Foundation

extension String {
    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}

enum HTTPMethod: String {
    case get = "GET"
    case put = "PUT"
    case post = "POST"
    case delete = "DELETE"
    case head = "HEAD"
    case options = "OPTIONS"
    case trace = "TRACE"
    case connect = "CONNECT"
}

struct HTTPHeader {
    let field: String
    let value: String
}

class APIRequest {
    let method: HTTPMethod
    let path: String
    var queryItems: [URLQueryItem]?
    var headers: [HTTPHeader]?
    var body: Data?

    init(method: HTTPMethod, path: String) {
        self.method = method
        self.path = path
    }

    init<Body: Encodable>(method: HTTPMethod, path: String, body: Body) throws {
        self.method = method
        self.path = path
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        self.body = try encoder.encode(body)
    }
}

struct APIResponse<Body> {
    let statusCode: Int
    let body: Body
}

extension APIResponse where Body == Data? {
    func decode<BodyType: Decodable>(to type: BodyType.Type) throws -> APIResponse<BodyType> {
        guard let data = body else {
            throw APIError.decodingFailure
        }
        let decodedJSON = try JSONDecoder().decode(BodyType.self, from: data)
        return APIResponse<BodyType>(statusCode: self.statusCode,
                body: decodedJSON)
    }
}

enum APIError: Error {
    case invalidURL
    case requestFailed
    case decodingFailure
}

enum APIResult<Body> {
    case success(APIResponse<Body>)
    case failure(APIError)
}

struct APIClient {

    typealias APIClientCompletion = (() throws -> APIResponse<Data?>) -> Void

    private let session = URLSession.shared
    private let baseURL: URL
    private var headers: [HTTPHeader]?
    private(set) var signature: String

    init(baseURL: String, apiKey: String = "", signature: String = "") {
        self.baseURL = URL(string: baseURL)!
        self.headers = [
            HTTPHeader(field: "Accept", value: "application/json"),
            HTTPHeader(field: "Content-Type", value: "application/json"),
            HTTPHeader(field: "Authorization", value: "Basic \(apiKey.toBase64())")
        ]
        self.signature = signature
    }

    func perform(_ request: APIRequest, _ completion: @escaping APIClientCompletion) {

        var urlComponents = URLComponents()
        urlComponents.scheme = baseURL.scheme
        urlComponents.host = baseURL.host
        urlComponents.path = baseURL.path
        urlComponents.queryItems = request.queryItems

        guard let url = urlComponents.url?.appendingPathComponent(request.path) else {
            completion { throw APIError.invalidURL }
            return
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method.rawValue
//        urlRequest.httpBody = request.body

        if ["POST", "PUT", "DELETE"].contains(request.method.rawValue) {
            do {
                if var json = try JSONSerialization.jsonObject(with: request.body ?? Data("{}".utf8), options: []) as? [String: Any] {
                    json["signature"] = self.signature
                    urlRequest.httpBody = try! JSONSerialization.data(withJSONObject: json)
                }
            } catch _ {
                return
            }
        }

        self.headers?.forEach {
            urlRequest.addValue($0.value, forHTTPHeaderField: $0.field)
        }

        print("\(urlRequest.httpMethod ?? "")")
        let str = String(decoding: urlRequest.httpBody ?? Data(), as: UTF8.self)
        print("BODY \n \(str)")
        print("HEADERS \n \(String(describing: urlRequest.allHTTPHeaderFields))")

        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse else {
                completion { throw APIError.requestFailed }
                return
            }
            completion { (APIResponse<Data?>(statusCode: httpResponse.statusCode, body: data)) }
        }
        task.resume()
    }
}
