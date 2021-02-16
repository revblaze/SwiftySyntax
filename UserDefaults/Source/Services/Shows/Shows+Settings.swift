//
//  Shows+Settings.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import Foundation

// MARK: Show Settings: Key-Value
extension Services.Shows {
    var keyValue: String {
        switch self {
        case .netflix:  return Keys.Shows.netflix
        case .prime:    return Keys.Shows.prime
        case .apple:    return Keys.Shows.apple
        case .disney:   return Keys.Shows.disney
        case .youtube:  return Keys.Shows.youtube
        case .hbo:      return Keys.Shows.hbo
        case .hulu:     return Keys.Shows.hulu
        case .crave:    return Keys.Shows.crave
        }
    }
}

// MARK: Show Settings: Storage
extension Settings {
    static func didConnect(_ state: Bool, network: Services.Shows) {
        Settings.save(state, forKey: network.keyValue)
    }
    
    struct Shows {
        static let netflix  = UserDefaults.standard.bool(forKey: Keys.Shows.netflix)
        static let prime    = UserDefaults.standard.bool(forKey: Keys.Shows.prime)
        static let apple    = UserDefaults.standard.bool(forKey: Keys.Shows.apple)
        static let disney   = UserDefaults.standard.bool(forKey: Keys.Shows.disney)
        static let youtube  = UserDefaults.standard.bool(forKey: Keys.Shows.youtube)
        static let hbo      = UserDefaults.standard.bool(forKey: Keys.Shows.hbo)
        static let hulu     = UserDefaults.standard.bool(forKey: Keys.Shows.hulu)
        static let crave    = UserDefaults.standard.bool(forKey: Keys.Shows.crave)
        
        static func didConnect(_ state: Bool, network: Services.Shows) {
            Settings.didConnect(state, network: network)
        }
        
        static func isConnected(_ service: Services.Shows) -> Bool {
            return UserDefaults.standard.bool(forKey: service.keyValue)
        }
    }
}

// MARK: Show Settings: Raw Keys
extension Keys {
    struct Shows {
        static let netflix   = "ShowServiceNetflix"
        static let prime     = "ShowServicePrime"
        static let apple     = "ShowServiceApple"
        static let disney    = "ShowServiceDisney"
        static let youtube   = "ShowServiceYouTube"
        static let hbo       = "ShowServiceHBO"
        static let hulu      = "ShowServiceHulu"
        static let crave     = "ShowServiceCrave"
    }
}
