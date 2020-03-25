//
//  Payment.swift
//  PaylandsSDK
//
//  Created by user168661 on 3/25/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import Foundation


struct Payment: Codable {
    private(set) var installments: Int
}

extension Payment: Equatable  {
    static func == (a: Payment, b: Payment) -> Bool {
        return a.installments == b.installments
    }
}
