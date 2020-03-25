//
// Created by apokdev on 3/9/20.
//

import Foundation

struct TransferRequest: Encodable {
    private(set) var orderUUID: UUID
    private(set) var serviceUUID: UUID
    private(set) var sender: TransferSender
    private(set) var recipient: TransferRecipient
    private(set) var paymentType: PaymentTypeCode
    private(set) var senderPaymentType: PaymentTypeCode
    private(set) var recipientAgent: RecipientAgent
    private(set) var agent: Agent
    private(set) var origin: TransferLocation
    private(set) var destination: TransferLocation
    private(set) var additional: TransferAdditional? = nil



    enum CodingKeys: String, CodingKey {
        case orderUUID = "order_uuid"
        case serviceUUID = "service"
        case sender, recipient, paymentType, senderPaymentType, recipientAgent, agent, origin, destination, additional
    }
    
}