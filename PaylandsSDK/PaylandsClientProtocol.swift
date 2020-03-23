//
// Created by apokdev on 3/13/20.
//

import Foundation

protocol PaylandsClientProtocol {
//    var settings: ClientSettings { get }
    // Api Keys //

    func getApiKeyProfiles(_ result: @escaping (Result<ApiKeyProfilesResponse, HTTPNetworkError>) -> Void)

   /* func getMyApiKeyProfile() -> MyApiKeyProfilesResponse

    // Api Keys //

    // MoTo Campaign //

    func createMotoCampaign(_ request: CreateMotoCampaignRequest) -> CreateMotoCampaignResponse

    // MoTo Campaign //

    // Payments //

    func sendPaymentFile(_ request: SendPaymentFileRequest) -> SendPaymentFileResponse

    func sendRefundsFile(_ request: SendRefundsFileRequest) -> SendRefundsFileResponse

    func generatePaymentOrder(_ request: GeneratePaymentOrderRequest) -> GeneratePaymentOrderResponse

    func getRedirectPaymentURL(_ request: GetRedirectPaymentURLRequest) -> String

    func sendWSPayment(_ request: SendWSPaymentRequest) -> SendWSPaymentResponse

    func sendTokenizedPayment(_ request: SendTokenizedPaymentRequest) -> String

    func sendOneStepPayment(_ request: SendOneStepPaymentRequest) -> SendOneStepPaymentResponse

    func refund(_ request: RefundRequest) -> RefundResponse

    func transfer(_ request: TransferRequest) -> TransferResponse

    func confirmPayment(_ request: ConfirmPaymentRequest) -> ConfirmPaymentResponse

    func cancelPayment(_ request: CancelPaymentRequest) -> CancelPaymentResponse

    func sendPayout(_ request: SendPayoutRequest) -> SendPayoutResponse

    // Payments //

    // Cards //

    func setCardDescription(request: SetCardDescriptionRequest) -> SetCardDescriptionResponse

    func removeCard(_ request: RemoveCardRequest) -> RemoveCardResponse

    func saveCard(_ request: SaveCardRequest) -> SaveCardResponse

    func saveCards(_ request: SaveCardsRequest) -> SaveCardsResponse

    func getCard(_ request: GetCardRequest) -> GetCardResponse

    func getCustomerCards(_ request: GetCustomerCardsRequest) -> GetCustomerCardsResponse

    func validateTokenizedCard(_ request: ValidateTokenizedCardRequest) -> ValidateTokenizedCardResponse

    // Cards //

    // Orders //

    func getOrder(_ request: GetOrderRequest) -> GetOrderResponse

    func getOrders(_ request: GetOrdersRequest) -> GetOrdersResponse

    // Orders //

    // Customers //

    func createCustomer(_ request: CreateCustomerRequest) -> CreateCustomerResponse

    func createCustomerProfile(_ request: CreateCustomerProfileRequest) -> CreateCustomerProfileResponse

    func updateCustomerProfile(_ request: UpdateCustomerProfileRequest) -> UpdateCustomerProfileResponse

    func getCustomerProfile(_ request: GetCustomerProfileRequest) -> GetCustomerProfileResponse

    func createCustomerAccount(_ request: CreateCustomerAccountRequest) -> CreateCustomerAccountResponse

    func updateCustomerAccount(_ request: UpdateCustomerAccountRequest) -> UpdateCustomerAccountResponse

    func getCustomerAccount(_ request: GetCustomerAccountRequest) -> GetCustomerAccountResponse

    func removeCustomerAccount(_ request: RemoveCustomerAccountRequest) -> RemoveCustomerAccountResponse

    func createCustomerAddress(_ request: CreateCustomerAddressRequest) -> CreateCustomerAddressResponse

    func updateCustomerAddress(_ request: UpdateCustomerAddressRequest) -> UpdateCustomerAddressResponse

    func getCustomerAddress(_ request: GetCustomerAddressRequest) -> GetCustomerAddressResponse

    func removeCustomerAddress(_ request: RemoveCustomerAddressRequest) -> RemoveCustomerAddressResponse

    // Customers //

    // BTS //

    func getPaymentAgents(_ request: GetPaymentAgentsRequest) -> GetPaymentAgentsResponse

    func getPaymentTypeByAgent(_ request: GetPaymentTypeByAgentRequest) -> GetPaymentTypeByAgentResponse

    func getAccountTypeByAgent(_ request: GetAccountTypeByAgentRequest) -> GetAccountTypeByAgentResponse

    func getStates(_ request: GetStatesRequest) -> GetStatesResponse

    func getBranches(_ request: GetBranchesRequest) -> GetBranchesResponse

    func getProducts(_ request: GetProductsRequest) -> GetProductsResponse

    // BTS //

    // Subscriptions //

    func createSubscriptionCompany() -> CreateSubscriptionCompanyResponse

    func createSubscriptionProduct(_ request: CreateSubscriptionProductRequest) -> CreateSubscriptionProductResponse

    func getSubscriptionProducts() -> GetSubscriptionProductsResponse

    func removeSubscriptionProduct(_ request: RemoveSubscriptionProductRequest) -> RemoveSubscriptionProductResponse

    func createSubscriptionPlan() -> CreateSubscriptionPlanResponse

    func getSubscriptionPlans() -> GetSubscriptionPlansResponse

    func removeSubscriptionPlan(_ request: RemoveSubscriptionPlanRequest) -> RemoveSubscriptionPlanResponse

    func subscribeCustomer(_ request: SubscribeCustomerRequest) -> SubscribeCustomerResponse

    func getSubscriptions() -> GetSubscriptionsResponse

    func removeSubscription(_ request: RemoveSubscriptionRequest) -> RemoveSubscriptionResponse


// Subscriptions // */

}

