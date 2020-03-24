//
// Created by apokdev on 3/5/20.
//

import Foundation

struct Antifraud: Codable {
    private(set) var evaluation: AntifraudEvaluation
    private(set) var score: Int
    private(set) var riskScore: Int
    private(set) var fraudScore: Int

    enum CodingKeys: String, CodingKey {
        case evaluation, score
        case riskScore = "risk_score"
        case fraudScore = "fraud_score"
    }

}

