//
//  ClientSettings.swift
//  PaylandsSDK
//
//  Created by user168661 on 3/17/20.
//  Copyright © 2020 user168661. All rights reserved.
//

import Foundation

public struct ClientSettings {
    private(set) var apiKey: String = ""
    private(set) var env: Environment? = Environment.PRODUCTION
    private(set) var signature: String? = ""
}

