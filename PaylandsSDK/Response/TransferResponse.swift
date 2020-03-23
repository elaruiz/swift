//
// Created by apokdev on 3/10/20.
//

import Foundation

class TransferResponse: BaseResponse {
    init(message: String, code: Int, currentTime: String? = nil) {
        super.init(message: message, code: code, currentTime: currentTime)
    }
}
