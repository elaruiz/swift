//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Branch: Codable {
    private(set) var branchCode: String
    private(set) var paymentAgentCode: String
    private(set) var paymentAgentRegion: String
    private(set) var paymentAgentCountry: String
    private(set) var paymentAgentState: String
    private(set) var paymentAgentCity: String
    private(set) var paymentAgentAddress: String
    private(set) var paymentAgentZipCode: String
    private(set) var paymentAgentPhone: String
    private(set) var branchDescription: String
    private(set) var paymentAgentSchedule: String


    enum CodingKeys: String, CodingKey {
        case branchCode = "pay_agent_branch_sd"
        case paymentAgentCode = "pay_agent_cd"
        case paymentAgentRegion = "pay_agent_region_sd"
        case paymentAgentCountry = "pay_agent_country_cd"
        case paymentAgentState = "pay_agent_state_sd"
        case paymentAgentCity = "pay_agent_city"
        case paymentAgentAddress = "pay_agent_address"
        case paymentAgentZipCode = "pay_agent_zipcode"
        case paymentAgentPhone = "pay_agent_phone"
        case branchDescription = "pay_agent_branch_ds"
        case paymentAgentSchedule = "pay_agent_schedule"
    }
}

