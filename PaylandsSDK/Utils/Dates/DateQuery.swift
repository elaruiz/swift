//
// Created by apokdev on 3/6/20.
//

import Foundation

struct DateQuery: HasDateFormatter {
    static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMddHHmm"
        return formatter
    }
}

