//
//  Keychain.swift
//  PropertyWrapper
//
//  Created by chijung chan  on 2023/5/8.
//

import Foundation
import Security

class KeyChain
{
    static func saveUserData(_ value: String, key: String)
    {
        guard let dataFromString = value.data(using: .utf8)
        else
        {
            return
        }
        
        let keychainQuery: [CFString : Any] = [kSecClass: kSecClassGenericPassword, kSecAttrService: key, kSecValueData: dataFromString]
        SecItemDelete(keychainQuery as CFDictionary)
        SecItemAdd(keychainQuery as CFDictionary, nil)
      }

      static func fetchUserData(key: String) -> String?
      {
        let keychainQuery: [CFString : Any] = [kSecClass : kSecClassGenericPassword, kSecAttrService : key, kSecReturnData: kCFBooleanTrue, kSecMatchLimitOne: kSecMatchLimitOne]
        var dataTypeRef: AnyObject?
        SecItemCopyMatching(keychainQuery as CFDictionary, &dataTypeRef)
        guard let retrievedData = dataTypeRef as? Data
        else
        {
            return nil
        }
        let stringFromData = String(data: retrievedData, encoding: String.Encoding.utf8)
        return String(stringFromData!)
      }
    
      static func deleteUserData(key: String)
      {
        let keychainQuery: [CFString : Any] = [kSecClass: kSecClassGenericPassword, kSecAttrService: key]
        SecItemDelete(keychainQuery as CFDictionary)
      }

      static func flush()
      {
        let secItemClasses =  [kSecClassGenericPassword]
        for itemClass in secItemClasses
        {
          let spec: NSDictionary = [kSecClass: itemClass]
          SecItemDelete(spec)
        }
      }
}

