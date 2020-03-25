//
// Created by apokdev on 3/13/20.
//

import Foundation

protocol PaylandsClientProtocol {
//    var settings: ClientSettings { get }
    // Api Keys //

    func getApiKeyProfiles(_ result: @escaping (Result<ApiKeyProfilesResponse, HTTPNetworkError>) -> Void)

    func getMyApiKeyProfiles(_ result: @escaping (Result<MyApiKeyProfilesResponse, HTTPNetworkError>) -> Void)

    // Api Keys //

    // MoTo Campaign //


    func createMotoCampaign(_ request: CreateMotoCampaignRequest, _ result: @escaping (Result<CreateMotoCampaignResponse, HTTPNetworkError>) -> Void)

    // MoTo Campaign //

    // Payments //

    func sendPaymentFile(_ request: SendPaymentFileRequest, _ result: @escaping (Result<SendPaymentFileResponse, HTTPNetworkError>) -> Void)

    func sendRefundsFile(_ request: SendRefundsFileRequest, _ result: @escaping (Result<SendRefundsFileResponse, HTTPNetworkError>) -> Void)

    func generatePaymentOrder(_ request: GeneratePaymentOrderRequest, _ result: @escaping (Result<GeneratePaymentOrderResponse, HTTPNetworkError>) -> Void)

    func getRedirectPaymentURL(_ request: GetRedirectPaymentURLRequest, _ result: @escaping (Result<String, HTTPNetworkError>) -> Void)

    func sendWSPayment(_ request: SendWSPaymentRequest, _ result: @escaping (Result<SendWSPaymentResponse, HTTPNetworkError>) -> Void)

    func sendTokenizedPayment(_ request: SendTokenizedPaymentRequest, _ result: @escaping (Result<String, HTTPNetworkError>) -> Void)

    func sendOneStepPayment(_ request: SendOneStepPaymentRequest, _ result: @escaping (Result<SendOneStepPaymentResponse, HTTPNetworkError>) -> Void)

    func refund(_ request: RefundRequest, _ result: @escaping (Result<RefundResponse, HTTPNetworkError>) -> Void)

    func transfer(_ request: TransferRequest, _ result: @escaping (Result<TransferResponse, HTTPNetworkError>) -> Void)

    func confirmPayment(_ request: ConfirmPaymentRequest, _ result: @escaping (Result<ConfirmPaymentResponse, HTTPNetworkError>) -> Void)

    func cancelPayment(_ request: CancelPaymentRequest, _ result: @escaping (Result<CancelPaymentResponse, HTTPNetworkError>) -> Void)

    func sendPayout(_ request: SendPayoutRequest, _ result: @escaping (Result<SendPayoutResponse, HTTPNetworkError>) -> Void)

    // Payments //

    // Cards //

    func setCardDescription(_ request: SetCardDescriptionRequest, _ result: @escaping (Result<SetCardDescriptionResponse, HTTPNetworkError>) -> Void)

    func removeCard(_ request: RemoveCardRequest, _ result: @escaping (Result<RemoveCardResponse, HTTPNetworkError>) -> Void)

    func saveCard(_ request: SaveCardRequest, _ result: @escaping (Result<SaveCardResponse, HTTPNetworkError>) -> Void)

    func saveCards(_ request: SaveCardsRequest, _ result: @escaping (Result<SaveCardsResponse, HTTPNetworkError>) -> Void)

    func getCard(_ request: GetCardRequest, _ result: @escaping (Result<GetCardResponse, HTTPNetworkError>) -> Void)

    func getCustomerCards(_ request: GetCustomerCardsRequest, _ result: @escaping (Result<GetCustomerCardsResponse, HTTPNetworkError>) -> Void)

    func validateTokenizedCard(_ request: ValidateTokenizedCardRequest, _ result: @escaping (Result<ValidateTokenizedCardResponse, HTTPNetworkError>) -> Void)

    // Cards //

    // Orders //

    func getOrder(_ request: GetOrderRequest, _ result: @escaping (Result<GetOrderResponse, HTTPNetworkError>) -> Void)

    func getOrders(_ request: GetOrdersRequest, _ result: @escaping (Result<GetOrdersResponse, HTTPNetworkError>) -> Void)

    // Orders //

    // Customers //

    func createCustomer(_ request: CreateCustomerRequest, _ result: @escaping (Result<CreateCustomerResponse, HTTPNetworkError>) -> Void)

    func createCustomerProfile(_ request: CreateCustomerProfileRequest, _ result: @escaping (Result<CreateCustomerProfileResponse, HTTPNetworkError>) -> Void)

    func updateCustomerProfile(_ request: UpdateCustomerProfileRequest, _ result: @escaping (Result<UpdateCustomerProfileResponse, HTTPNetworkError>) -> Void)

    func getCustomerProfile(_ request: GetCustomerProfileRequest, _ result: @escaping (Result<GetCustomerProfileResponse, HTTPNetworkError>) -> Void)

    func createCustomerAccount(_ request: CreateCustomerAccountRequest, _ result: @escaping (Result<CreateCustomerAccountResponse, HTTPNetworkError>) -> Void)

    func updateCustomerAccount(_ request: UpdateCustomerAccountRequest, _ result: @escaping (Result<UpdateCustomerAccountResponse, HTTPNetworkError>) -> Void)

    func getCustomerAccount(_ request: GetCustomerAccountRequest, _ result: @escaping (Result<GetCustomerAccountResponse, HTTPNetworkError>) -> Void)

    func removeCustomerAccount(_ request: RemoveCustomerAccountRequest, _ result: @escaping (Result<RemoveCustomerAccountResponse, HTTPNetworkError>) -> Void)

    func createCustomerAddress(_ request: CreateCustomerAddressRequest, _ result: @escaping (Result<CreateCustomerAddressResponse, HTTPNetworkError>) -> Void)

    func updateCustomerAddress(_ request: UpdateCustomerAddressRequest, _ result: @escaping (Result<UpdateCustomerAddressResponse, HTTPNetworkError>) -> Void)

    func getCustomerAddress(_ request: GetCustomerAddressRequest, _ result: @escaping (Result<GetCustomerAddressResponse, HTTPNetworkError>) -> Void)

    func removeCustomerAddress(_ request: RemoveCustomerAddressRequest, _ result: @escaping (Result<RemoveCustomerAddressResponse, HTTPNetworkError>) -> Void)

    // Customers //

    // BTS //

    func getPaymentAgents(_ request: GetPaymentAgentsRequest, _ result: @escaping (Result<GetPaymentAgentsResponse, HTTPNetworkError>) -> Void)

    func getPaymentTypeByAgent(_ request: GetPaymentTypeByAgentRequest, _ result: @escaping (Result<GetPaymentTypeByAgentResponse, HTTPNetworkError>) -> Void)

    func getAccountTypeByAgent(_ request: GetAccountTypeByAgentRequest, _ result: @escaping (Result<GetAccountTypeByAgentResponse, HTTPNetworkError>) -> Void)

    func getStates(_ request: GetStatesRequest, _ result: @escaping (Result<GetStatesResponse, HTTPNetworkError>) -> Void)

    func getBranches(_ request: GetBranchesRequest, _ result: @escaping (Result<GetBranchesResponse, HTTPNetworkError>) -> Void)

    func getProducts(_ request: GetProductsRequest, _ result: @escaping (Result<GetProductsResponse, HTTPNetworkError>) -> Void)

    // BTS //

    // Subscriptions //

    func createSubscriptionCompany(_ result: @escaping (Result<CreateSubscriptionCompanyResponse, HTTPNetworkError>) -> Void)

    func createSubscriptionProduct(_ request: CreateSubscriptionProductRequest, _ result: @escaping (Result<CreateSubscriptionProductResponse, HTTPNetworkError>) -> Void)

    func getSubscriptionProducts(_ result: @escaping (Result<GetSubscriptionProductsResponse, HTTPNetworkError>) -> Void)

    func removeSubscriptionProduct(_ request: RemoveSubscriptionProductRequest, _ result: @escaping (Result<RemoveSubscriptionProductResponse, HTTPNetworkError>) -> Void)

    func createSubscriptionPlan(_ result: @escaping (Result<CreateSubscriptionPlanResponse, HTTPNetworkError>) -> Void)

    func getSubscriptionPlans(_ result: @escaping (Result<GetSubscriptionPlansResponse, HTTPNetworkError>) -> Void)

    func removeSubscriptionPlan(_ request: RemoveSubscriptionPlanRequest, _ result: @escaping (Result<RemoveSubscriptionPlanResponse, HTTPNetworkError>) -> Void)

    func subscribeCustomer(_ request: SubscribeCustomerRequest, _ result: @escaping (Result<SubscribeCustomerResponse, HTTPNetworkError>) -> Void)

    func getSubscriptions(_ result: @escaping (Result<GetSubscriptionsResponse, HTTPNetworkError>) -> Void)

    func removeSubscription(_ request: RemoveSubscriptionRequest, _ result: @escaping (Result<RemoveSubscriptionResponse, HTTPNetworkError>) -> Void)


// Subscriptions //

}

