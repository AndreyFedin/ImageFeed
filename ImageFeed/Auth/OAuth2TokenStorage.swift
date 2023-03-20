//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by user on 19.03.2023.
//

import Foundation

final class OAuth2TokenStorage {
    private let userDefaults = UserDefaults.standard
         var token: String? {
            get {
                return userDefaults.string(forKey: Keys.token.rawValue)
            }
            set {
                userDefaults.set(newValue, forKey: Keys.token.rawValue)
            }
        }
        
        private enum Keys: String {
            case token
        }
}
