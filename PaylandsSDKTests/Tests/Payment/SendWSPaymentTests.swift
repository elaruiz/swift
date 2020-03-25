//
//  SendRefundsFile.swift
//  PaylandsSDKTests
//
//  Created by user168661 on 3/24/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import XCTest

class SendWSPaymentTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSendWSPaymentSuccess() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let sendWSPaymentRequest = SendWSPaymentRequest(orderUUID: "1f405ea3-9798-42a6-9e87-bd347ef67f55",
                cardUUID: "C10721E7-1404-45DC-8762-351DD9945D1D",
                customerIp: "62.43.214.55")

        var transactions = [Transaction]()

        transactions.append(
            Transaction(
                uuid: "A714DC03-70F6-4F71-AFB8-5E99B1868201",
                created: "2017-01-12T09:12:58+0100",
                createdFromClientTimezone: "2017-01-12T09:12:58+0100",
                operative: Operative.AUTHORIZATION,
                amount: 111,
                authorization: "014639",
                status: TransactionStatus.SUCCESS,
                error: "NONE",
                antifraud: nil,
                card: Card(object: "CARD",
                    uuid: "C089B1BF-A4FA-4B0F-A5FE-F21C5BFEFC27",
                    type: CardType.C,
                    token: "c734c643edfdccf3555a157fbf7ccb08006fbb1f",
                    brand: "VISA",
                    country: "ES",
                    holder: "pepe",
                    bin: "454881",
                    last4: "0004",
                    expireMonth: "12",
                    expireYear: "20",
                    additional: "main card",
                    bank: "SERVIRED, SOCIEDAD ESPANOLA DE MEDIOS DE PAGO, S.A.",
                    validationDate: nil,
                    prepaid: "")
            )
        )

        let sendWSPaymentResponse = SendWSPaymentResponse(
                message: "OK",
                code: 200,
                currentTime: "2017-01-12T09:12:58+0100",
                order: Order(
                        uuid: "114A527E-65C7-4720-99F6-DF635A4975E0",
                        created: "2017-01-11T15:50:16+0100",
                        createdFromClientTimezone: "2017-01-11T15:50:16+0100",
                        amount: 111,
                        currency: "484",
                        paid: true,
                        safe: false,
                        refunded: 0,
                        additional: "",
                        service: "MIT",
                        customer: nil,
                        status: OrderStatus.SUCCESS,
                        transactions: transactions,
                        token: "",
                        ip: "62.12.123.45"
                ),
                client: Client(uuid: "818431F0-F23F-47EA-A854-BD01E8593E2E"),
                extraData: OrderExtraData(payment: Payment(installments: 3))
        )

        PaylandsClientMock.shared.sendWSPayment(sendWSPaymentRequest) { (result: Result<SendWSPaymentResponse, HTTPNetworkError>) in
            if case .success(let response) = result {
                XCTAssertEqual(sendWSPaymentResponse, response)
            }
        }
    }

}

