//
//  VerificationMethodConfigCreatorParameters.swift
//  VerificationCore
//
//  Created by Aleksander Wojcik on 16/07/2020.
//  Copyright © 2020 Aleksander Wojcik. All rights reserved.
//

/// Protocol defining verification method builders optional parameteres that can be passed to every verification method.
public protocol VerificationMethodConfigCreatorParameters {
    func honourEarlyReject(_ honourEarlyReject: Bool) -> Self
    func custom(_ custom: String?) -> Self
    func reference(_ reference: String?) -> Self
    func acceptedLanguages(_ acceptedLanguages: [VerificationLanguage]) -> Self
}
