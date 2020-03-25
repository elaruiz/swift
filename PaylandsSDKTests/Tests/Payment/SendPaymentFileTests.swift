//
//  SendPaymentFile.swift
//  PaylandsSDKTests
//
//  Created by user168661 on 3/24/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import XCTest

class SendPaymentFileTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSendPaymentFileSuccess() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let sendPaymentFileRequest = SendPaymentFileRequest(filename: "test.csv",
            data: "QU1PVU5ULENBUkQsQ1VTVE9NRVJfRVhURVJOQUxfSUQsU0VSVklDRSxBRERJVElPTkFMLFVSTF9QT1NUDQoxMjAzNSxFNzZBNTdGRi00REJDLTRBM0QtQjZFMy0wNTIwRThCMTNFM0YsMzA4LDExNEFCNDI0LTAyM0ItNEUxMy",
            executeAt: Calendar.current.date(from: DateComponents(year: 2017, month: 11, day: 11, hour: 11, minute: 11, second: 11))!)

        var errors = [BatchError]()
        
        errors.append(BatchError(line: 13, msg: "Invalid card"))
        
        let sendPaymentFileResponse = SendPaymentFileResponse(message: "OK",
                code: 200,
                currentTime: "2017-10-26T17:28:06+0200",
                errors: errors)

        PaylandsClientMock.shared.sendPaymentFile(sendPaymentFileRequest) { (result: Result<SendPaymentFileResponse, HTTPNetworkError>) in
            if case .success(let response) = result {
                XCTAssertEqual(sendPaymentFileResponse, response)
            }
        }
    }

}
