//
// Created by apokdev on 3/10/20.
//

import Foundation

class TransferResponse: BaseResponse {
    static func == (a: TransferResponse, b: TransferResponse) -> Bool {
        return (a as BaseResponse) == (b as BaseResponse)
    }
}
