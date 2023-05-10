//
//  Wrapper.swift
//  PropertyWrapper
//
//  Created by chijung chan  on 2023/5/8.
//

import Foundation
struct Wrappers {
    @KeychainWrapper(key: .id) static var id
    @KeychainWrapper(key: .password) static var password
    @KeychainWrapper(key: .nationalId) static var nationalId

    @UserDefaultsWrapper<Bool>(key: .isOpen) static var isOpen: Bool?
    @UserDefaultsWrapper<String>(key: .accessToken) static var accessToken: String?
    @UserDefaultsWrapper<Int>(key: .count) static var count: Int?

    
}
