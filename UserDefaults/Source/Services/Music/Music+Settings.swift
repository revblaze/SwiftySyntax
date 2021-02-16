//
//  Music+Settings.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import Foundation

// MARK: Music Settings: Key-Value
extension Services.Music {
    var keyValue: String {
        switch self {
        case .apple:    return Keys.Music.apple
        case .spotify:  return Keys.Music.spotify
        }
    }
}

// MARK:- Music Settings: Storage
extension Settings {
    static func didConnect(_ state: Bool, music: Services.Music) {
        Settings.save(state, forKey: music.keyValue)
    }
    
    struct Music {
        static let apple    = UserDefaults.standard.bool(forKey: Keys.Music.apple)
        static let spotify  = UserDefaults.standard.bool(forKey: Keys.Music.spotify)
        
        static func didConnect(_ state: Bool, service: Services.Music) {
            Settings.save(state, forKey: service.keyValue)
        }
        
        static func isConnected(_ service: Services.Music) -> Bool {
            return UserDefaults.standard.bool(forKey: service.keyValue)
        }
    }
}

// MARK:- Music Settings: Keys
extension Keys {
    struct Music {
        static let apple = "MusicServiceApple"
        static let spotify = "MusicServiceSpotify"
    }
}
