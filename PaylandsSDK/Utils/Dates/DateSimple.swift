//
// Created by apokdev on 3/6/20.
//

import Foundation

struct DateSimple: HasDateFormatter {
    static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
}
