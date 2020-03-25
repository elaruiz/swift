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

    // MoTo Campaign //

    func createMotoCampaign(_ request: CreateMotoCampaignRequest, _ result: @escaping (Result<CreateMotoCampaignResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CreateMotoCampaignResponseSuccess", directory: "TestResources/Campaign")
        let val = try! self.jsonDecoder.decode(CreateMotoCampaignResponse.self, from: jsonData)
        result(.success(val))
    }

    // MoTo Campaign //

    // Payments //

    func sendPaymentFile(_ request: SendPaymentFileRequest, _ result: @escaping (Result<SendPaymentFileResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SendPaymentFileResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(SendPaymentFileResponse.self, from: jsonData)
        result(.success(val))
    }

    func sendRefundsFile(_ request: SendRefundsFileRequest, _ result: @escaping (Result<SendRefundsFileResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SendRefundsFileResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(SendRefundsFileResponse.self, from: jsonData)
        result(.success(val))
    }

    func generatePaymentOrder(_ request: GeneratePaymentOrderRequest, _ result: @escaping (Result<GeneratePaymentOrderResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GeneratePaymentOrderResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(GeneratePaymentOrderResponse.self, from: jsonData)
        result(.success(val))
    }

    func getRedirectPaymentURL(_ request: GetRedirectPaymentURLRequest, _ result: @escaping (Result<String, HTTPNetworkError>) -> Void) {
        
        result(.success("dsad"))
    }

    func sendWSPayment(_ request: SendWSPaymentRequest, _ result: @escaping (Result<SendWSPaymentResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SendWSPaymentResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(SendWSPaymentResponse.self, from: jsonData)
        result(.success(val))
    }

    func sendTokenizedPayment(_ request: SendTokenizedPaymentRequest, _ result: @escaping (Result<String, HTTPNetworkError>) -> Void) {
        
        result(.success("val"))
    }

    func sendOneStepPayment(_ request: SendOneStepPaymentRequest, _ result: @escaping (Result<SendOneStepPaymentResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SendOneStepPaymentResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(SendOneStepPaymentResponse.self, from: jsonData)
        result(.success(val))
    }

    func refund(_ request: RefundRequest, _ result: @escaping (Result<RefundResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "RefundResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(RefundResponse.self, from: jsonData)
        result(.success(val))
    }

    func transfer(_ request: TransferRequest, _ result: @escaping (Result<TransferResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "TransferResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(TransferResponse.self, from: jsonData)
        result(.success(val))
    }

    func confirmPayment(_ request: ConfirmPaymentRequest, _ result: @escaping (Result<ConfirmPaymentResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "ConfirmPaymentResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(ConfirmPaymentResponse.self, from: jsonData)
        result(.success(val))
    }

    func cancelPayment(_ request: CancelPaymentRequest, _ result: @escaping (Result<CancelPaymentResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CancelPaymentResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(CancelPaymentResponse.self, from: jsonData)
        result(.success(val))
    }

    func sendPayout(_ request: SendPayoutRequest, _ result: @escaping (Result<SendPayoutResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SendPayoutResponseSuccess", directory: "TestResources/Payment")
        let val = try! self.jsonDecoder.decode(SendPayoutResponse.self, from: jsonData)
        result(.success(val))
    }

    // Payments //

    // Cards //

    func setCardDescription(_ request: SetCardDescriptionRequest, _ result: @escaping (Result<SetCardDescriptionResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SetCardDescriptionResponseSuccess", directory: "TestResources/Card")
        let val = try! self.jsonDecoder.decode(SetCardDescriptionResponse.self, from: jsonData)
        result(.success(val))
    }

    func removeCard(_ request: RemoveCardRequest, _ result: @escaping (Result<RemoveCardResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "RemoveCardResponseSuccess", directory: "TestResources/Card")
        let val = try! self.jsonDecoder.decode(RemoveCardResponse.self, from: jsonData)
        result(.success(val))
    }

    func saveCard(_ request: SaveCardRequest, _ result: @escaping (Result<SaveCardResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SaveCardResponseSuccess", directory: "TestResources/Card")
        let val = try! self.jsonDecoder.decode(SaveCardResponse.self, from: jsonData)
        result(.success(val))
    }

    func saveCards(_ request: SaveCardsRequest, _ result: @escaping (Result<SaveCardsResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SaveCardsResponseSuccess", directory: "TestResources/Card")
        let val = try! self.jsonDecoder.decode(SaveCardsResponse.self, from: jsonData)
        result(.success(val))
    }

    func getCard(_ request: GetCardRequest, _ result: @escaping (Result<GetCardResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetCardResponseSuccess", directory: "TestResources/Card")
        let val = try! self.jsonDecoder.decode(GetCardResponse.self, from: jsonData)
        result(.success(val))
    }

    func getCustomerCards(_ request: GetCustomerCardsRequest, _ result: @escaping (Result<GetCustomerCardsResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetCustomerCardsResponseSuccess", directory: "TestResources/Card")
        let val = try! self.jsonDecoder.decode(GetCustomerCardsResponse.self, from: jsonData)
        result(.success(val))
    }

    func validateTokenizedCard(_ request: ValidateTokenizedCardRequest, _ result: @escaping (Result<ValidateTokenizedCardResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "ValidateTokenizedCardResponseSuccess", directory: "TestResources/Card")
        let val = try! self.jsonDecoder.decode(ValidateTokenizedCardResponse.self, from: jsonData)
        result(.success(val))
    }

    // Cards //

    // Orders //

    func getOrder(_ request: GetOrderRequest, _ result: @escaping (Result<GetOrderResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetOrderResponseSuccess", directory: "TestResources/Order")
        let val = try! self.jsonDecoder.decode(GetOrderResponse.self, from: jsonData)
        result(.success(val))
    }

    func getOrders(_ request: GetOrdersRequest, _ result: @escaping (Result<GetOrdersResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetOrdersResponseSuccess", directory: "TestResources/Order")
        let val = try! self.jsonDecoder.decode(GetOrdersResponse.self, from: jsonData)
        result(.success(val))
    }

    // Orders //

    // Customers //

    func createCustomer(_ request: CreateCustomerRequest, _ result: @escaping (Result<CreateCustomerResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CreateCustomerResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(CreateCustomerResponse.self, from: jsonData)
        result(.success(val))
    }

    func createCustomerProfile(_ request: CreateCustomerProfileRequest, _ result: @escaping (Result<CreateCustomerProfileResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CreateCustomerProfileResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(CreateCustomerProfileResponse.self, from: jsonData)
        result(.success(val))
    }

    func updateCustomerProfile(_ request: UpdateCustomerProfileRequest, _ result: @escaping (Result<UpdateCustomerProfileResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "UpdateCustomerProfileResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(UpdateCustomerProfileResponse.self, from: jsonData)
        result(.success(val))
    }

    func getCustomerProfile(_ request: GetCustomerProfileRequest, _ result: @escaping (Result<GetCustomerProfileResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetCustomerProfileResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(GetCustomerProfileResponse.self, from: jsonData)
        result(.success(val))
    }

    func createCustomerAccount(_ request: CreateCustomerAccountRequest, _ result: @escaping (Result<CreateCustomerAccountResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CreateCustomerAccountResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(CreateCustomerAccountResponse.self, from: jsonData)
        result(.success(val))
    }

    func updateCustomerAccount(_ request: UpdateCustomerAccountRequest, _ result: @escaping (Result<UpdateCustomerAccountResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "UpdateCustomerAccountResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(UpdateCustomerAccountResponse.self, from: jsonData)
        result(.success(val))
    }

    func getCustomerAccount(_ request: GetCustomerAccountRequest, _ result: @escaping (Result<GetCustomerAccountResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetCustomerAccountResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(GetCustomerAccountResponse.self, from: jsonData)
        result(.success(val))
    }

    func removeCustomerAccount(_ request: RemoveCustomerAccountRequest, _ result: @escaping (Result<RemoveCustomerAccountResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "RemoveCustomerAccountResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(RemoveCustomerAccountResponse.self, from: jsonData)
        result(.success(val))
    }

    func createCustomerAddress(_ request: CreateCustomerAddressRequest, _ result: @escaping (Result<CreateCustomerAddressResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CreateCustomerAddressResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(CreateCustomerAddressResponse.self, from: jsonData)
        result(.success(val))
    }

    func updateCustomerAddress(_ request: UpdateCustomerAddressRequest, _ result: @escaping (Result<UpdateCustomerAddressResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "UpdateCustomerAddressResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(UpdateCustomerAddressResponse.self, from: jsonData)
        result(.success(val))
    }

    func getCustomerAddress(_ request: GetCustomerAddressRequest, _ result: @escaping (Result<GetCustomerAddressResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetCustomerAddressResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(GetCustomerAddressResponse.self, from: jsonData)
        result(.success(val))
    }

    func removeCustomerAddress(_ request: RemoveCustomerAddressRequest, _ result: @escaping (Result<RemoveCustomerAddressResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "RemoveCustomerAddressResponseSuccess", directory: "TestResources/Customer")
        let val = try! self.jsonDecoder.decode(RemoveCustomerAddressResponse.self, from: jsonData)
        result(.success(val))
    }

    // Customers //

    // BTS //

    func getPaymentAgents(_ request: GetPaymentAgentsRequest, _ result: @escaping (Result<GetPaymentAgentsResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetPaymentAgentsResponseSuccess", directory: "TestResources/BTS")
        let val = try! self.jsonDecoder.decode(GetPaymentAgentsResponse.self, from: jsonData)
        result(.success(val))
    }

    func getPaymentTypeByAgent(_ request: GetPaymentTypeByAgentRequest, _ result: @escaping (Result<GetPaymentTypeByAgentResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetPaymentTypeByAgentResponseSuccess", directory: "TestResources/BTS")
        let val = try! self.jsonDecoder.decode(GetPaymentTypeByAgentResponse.self, from: jsonData)
        result(.success(val))
    }

    func getAccountTypeByAgent(_ request: GetAccountTypeByAgentRequest, _ result: @escaping (Result<GetAccountTypeByAgentResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetAccountTypeByAgentResponseSuccess", directory: "TestResources/BTS")
        let val = try! self.jsonDecoder.decode(GetAccountTypeByAgentResponse.self, from: jsonData)
        result(.success(val))
    }

    func getStates(_ request: GetStatesRequest, _ result: @escaping (Result<GetStatesResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetStatesResponseSuccess", directory: "TestResources/BTS")
        let val = try! self.jsonDecoder.decode(GetStatesResponse.self, from: jsonData)
        result(.success(val))
    }

    func getBranches(_ request: GetBranchesRequest, _ result: @escaping (Result<GetBranchesResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetBranchesResponseSuccess", directory: "TestResources/BTS")
        let val = try! self.jsonDecoder.decode(GetBranchesResponse.self, from: jsonData)
        result(.success(val))
    }

    func getProducts(_ request: GetProductsRequest, _ result: @escaping (Result<GetProductsResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetProductsResponseSuccess", directory: "TestResources/BTS")
        let val = try! self.jsonDecoder.decode(GetProductsResponse.self, from: jsonData)
        result(.success(val))
    }

    // BTS //

    // Subscriptions //

    func createSubscriptionCompany(_ result: @escaping (Result<CreateSubscriptionCompanyResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CreateSubscriptionCompanyResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(CreateSubscriptionCompanyResponse.self, from: jsonData)
        result(.success(val))
    }
    

    func createSubscriptionProduct(_ request: CreateSubscriptionProductRequest, _ result: @escaping (Result<CreateSubscriptionProductResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CreateSubscriptionProductResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(CreateSubscriptionProductResponse.self, from: jsonData)
        result(.success(val))
    }

    func getSubscriptionProducts(_ result: @escaping (Result<GetSubscriptionProductsResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetSubscriptionProductsResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(GetSubscriptionProductsResponse.self, from: jsonData)
        result(.success(val))
    }

    func removeSubscriptionProduct(_ request: RemoveSubscriptionProductRequest, _ result: @escaping (Result<RemoveSubscriptionProductResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "RemoveSubscriptionProductResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(RemoveSubscriptionProductResponse.self, from: jsonData)
        result(.success(val))
    }

    func createSubscriptionPlan(_ result: @escaping (Result<CreateSubscriptionPlanResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "CreateSubscriptionPlanResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(CreateSubscriptionPlanResponse.self, from: jsonData)
        result(.success(val))
    }

    func getSubscriptionPlans(_ result: @escaping (Result<GetSubscriptionPlansResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetSubscriptionPlansResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(GetSubscriptionPlansResponse.self, from: jsonData)
        result(.success(val))
    }

    func removeSubscriptionPlan(_ request: RemoveSubscriptionPlanRequest, _ result: @escaping (Result<RemoveSubscriptionPlanResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "RemoveSubscriptionPlanResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(RemoveSubscriptionPlanResponse.self, from: jsonData)
        result(.success(val))
    }

    func subscribeCustomer(_ request: SubscribeCustomerRequest, _ result: @escaping (Result<SubscribeCustomerResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "SubscribeCustomerResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(SubscribeCustomerResponse.self, from: jsonData)
        result(.success(val))
    }

    func getSubscriptions(_ result: @escaping (Result<GetSubscriptionsResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "GetSubscriptionsResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(GetSubscriptionsResponse.self, from: jsonData)
        result(.success(val))
    }

    func removeSubscription(_ request: RemoveSubscriptionRequest, _ result: @escaping (Result<RemoveSubscriptionResponse, HTTPNetworkError>) -> Void) {
        let jsonData = getJsonData(fileName: "RemoveSubscriptionResponseSuccess", directory: "TestResources/Subscription")
        let val = try! self.jsonDecoder.decode(RemoveSubscriptionResponse.self, from: jsonData)
        result(.success(val))
    }


}

