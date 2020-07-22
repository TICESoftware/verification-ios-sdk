//
//  VerificationError.swift
//  VerificationCore
//
//  Created by Aleksander Wojcik on 13/07/2020.
//  Copyright © 2020 Aleksander Wojcik. All rights reserved.
//

public enum SDKError: LocalizedError {
    
    case illegalArgument(message: String?)
    case serialization(encodable: Encodable)
    case apiCall(data: ApiErrorData)
    case unexpected(message: String?)
    
    public var errorDescription: String? {
        switch self {
        case .illegalArgument(let message):
            return message ?? "Illegal argument was passed."
        case .serialization(let encodable):
            return "Encoding of \(encodable) failed"
        case .apiCall(let data):
            return data.message ?? "Sinch api returned an error without message"
        case .unexpected(let message):
            return message ?? "Unexpected error"
        }
    }

}
