//
// Created by apokdev on 3/10/20.
//

import Foundation

class RemoveCardResponse: BaseResponse {

    static func == (a: RemoveCardResponse, b: RemoveCardResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse)
    }

}
