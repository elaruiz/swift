//
// Created by apokdev on 3/6/20.
//

import Foundation

struct DateTimeFull: HasDateFormatter {
    static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return formatter
    }
}
