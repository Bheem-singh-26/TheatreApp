//
//  KeychainStorage.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/17/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import KeychainSwift

@propertyWrapper
struct KeychainStorage {
    
    private let key: String
    private lazy var keychain = KeychainSwift()

    init(key: String) {
        self.key = key
    }

    var wrappedValue: String? {
        mutating get {
            return keychain.get(key)
        }
        set {
            if let newValue = newValue {
                keychain.set(newValue, forKey: key)
            } else {
                keychain.delete(key)
            }
        }
    }
    
}
