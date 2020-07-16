//
//  Constants.swift
//  VerificationCore
//
//  Created by Aleksander Wojcik on 09/07/2020.
//  Copyright © 2020 Aleksander Wojcik. All rights reserved.
//

import Foundation

enum Constants {
    
    enum Api {
        
        static let version = "v1"
        
        ///Sinch API domain taken from plist file. Based on built target different domain can be used for various environments. The domain has to end with '/' sign.
        static var domain: String {
            guard let urlPath = Bundle.main.infoDictionary!["API_URL"] as? String else {
                fatalError("API_URL have to be placed in plist file")
            }
            return urlPath
        }
        
    }
    
}
