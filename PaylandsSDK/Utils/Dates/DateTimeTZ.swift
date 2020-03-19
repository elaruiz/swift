//
// Created by apokdev on 3/6/20.
//

import Foundation

struct DateTimeTZ: HasDateFormatter {
    static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return formatter
    }
}

