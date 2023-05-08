//
//  KeychainWrapper.swift
//  PropertyWrapper
//
//  Created by chijung chan  on 2023/5/8.
//

import Foundation
@propertyWrapper
struct KeychainWrapper {
    
    enum UDName: String
    {
        case id
        case password
        case nationalId
    }
    
    private var key: UDName
    init(key: UDName)
    {
        self.key = key
    }
    
    var wrappedValue: String {
        get
        {
            return KeyChain.fetchUserData(key: key.rawValue)?.trimmingCharacters(in: .whitespaces) ?? ""
        }
        set
        {
            KeyChain.saveUserData(newValue, key: key.rawValue)
        }
    }
}





