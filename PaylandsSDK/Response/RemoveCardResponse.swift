//
// Created by apokdev on 3/10/20.
//

import Foundation

class RemoveCardResponse: BaseResponse {

    init(message: String, code: Int, currentTime: String? = nil) {
        super.init(message: message, code: code, currentTime: currentTime)
    }

}
