//
//  MotoCampaign.swift
//  PaylandsSDKTests
//
//  Created by user168661 on 3/24/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import XCTest

class MotoCampaign: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCreateMotoCampaignSuccess() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let motoCampaignRequest = CreateMotoCampaignRequest(
                subject: "Navidad 2019",
                description: "Campaña de Navidad 2019",
                serviceUUID: "60A1F4C0-CC58-47A9-A0B9-868F9EF29045",
                type: MoToCampaignType.MANUAL,
                expiresAt: Calendar.current.date(from: DateComponents(year: 2020, month: 10, day: 15))!,
                file: "data:text/csv;base64,QU1PVU5ULE9QRVJBVElWRSxERVNUSU5BVElPTixDVVNUT01FUl9FWFRfSUQsQURESVRJT05BTCxTRUNVUkUsVVJMX1BPU1QsVVJMX09LLFVSTF9LTyxDQVJEX1RFTVBMQVRFLE1PVE9fVEVNUExBVEUsRENDX1RFTVBMQVRFCjEsREVGRVJSRUQsc3VjY2Vzc0BzaW11bGF0b3IuYW1hem9uc2VzLmNvbSxleHRlcm5hbElELGFkZGl0aW9uYWwsRkFMU0UsaHR0cDovL3VybC5wb3N0LGh0dHA6Ly91cmwub2ssaHR0cDovL3VybC5rbyxDRDVGMzU0MC1CMkNCLTRDNjctQUU2Qi1GNzZFRDkzREU2QzEsRUVCRjEwMjItNkRCMi00NURCLTgxN0QtQTg3QjA5QUU4NDFCLDQwMTExRkU4LTlCMzItNDNFMy1BNEFFLTk3QzdCRTZEMTlDNQ==",

                filename: "test.csv")

        let detailC = CampaignDetail(id: 21,                uuid: "CFD6A322-47F4-4AA8-8208-B8AAE02D6C87",
                description: "some description",
                serviceUUID: "60A1F4C0-CC58-47A9-A0B9-868F9EF29045",
                clientID: 1,
                clientUUID: "B8A48789-8AF0-47D1-9116-35AB0A941121",
                type: MoToCampaignType.MAIL,
                status: MoToCampaignStatus.PENDING,
                entry: CampaignEntry.WEBSERVICE,
                createdAt: "2019-05-30 12:52:54",
                expiresAt: "2019-04-01 00:00:00",
                subject: "te223st",
                filename: "filename.csv",
                error: nil
        )

        var paymentsC = [MotoCampaignPayment]()
        paymentsC.append(MotoCampaignPayment(id: 774,
                uuid: "0297A7B1-5506-49EF-836B-1E2F04C6D179",
                detailUUID: "774",
                line: 2,
                status: MoToCampaignStatus.PENDING,
                amount: 47,
                operative: Operative.AUTHORIZATION,
                secure: false,
                destination: "lchessell0@fastcompany.com",
                createdAt: "2019-05-30 12:52:54",
                externalId: nil,
                additional: nil,
                urlPost: "http://wikimedia.org",
                urlOk: "https://imgur.com/lobortis.aspx",
                urlKo: "https://walmart.com/varius.png",
                cardTemplate: "3FA633A9-0F04-4EDD-B32E-4D56E1B0761D",
                dccTemplate: nil,
                moToTemplate: nil
            ))
            paymentsC.append(MotoCampaignPayment(id: 775,
                uuid: "69D9D760-0F03-4083-9B5D-67C6475695B2",
                detailUUID: "775",
                line: 3,
                status: MoToCampaignStatus.PENDING,
                amount: 5,
                operative: Operative.DEFERRED,
                secure: false,
                destination: "jmedeway1@angelfire.com",
                createdAt: "2019-05-30 12:52:54",
                externalId: nil,
                additional: nil,
                urlPost: "https://weebly.com",
                urlOk: "http://hud.gov/consequat.xml",
                urlKo: "https://1688.com/quisque/erat/eros/viverra.jsp",
                cardTemplate: nil,
                dccTemplate: nil,
                moToTemplate: nil
            ))

        let motoCampaignResponse = CreateMotoCampaignResponse(message: "OK",
                                                              code: 200,
                                                              currentTime: "2019-05-30T12:52:54+0200",
                                                              detail: detailC, payments: paymentsC)

        PaylandsClientMock.shared.createMotoCampaign(motoCampaignRequest) { (result: Result<CreateMotoCampaignResponse, HTTPNetworkError>) in
            if case .success(let response) = result {
                XCTAssertEqual(motoCampaignResponse, response)
            }
        }
    }


}
