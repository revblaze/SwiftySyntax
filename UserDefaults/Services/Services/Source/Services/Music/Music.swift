//
//  Music.swift
//  Services (UserDefaults Demo)
//  revblaze/SwiftySyntax
//
//  Created by Justin Bush on 2021-02-15.
//

import Foundation

// MARK: Music Properties

// MARK: Music Services: 

extension Services.Music {
    
    var id: Int {
        switch self {
        case .apple:    return 2001
        case .spotify:  return 2002
        }
    }
    
    var url: String {
        switch self {
        case .apple:    return "https://music.apple.com"
        case .spotify:  return "https://open.spotify.com"
        }
    }
    
    /// Gets the active connection status of the music service (`Services.Music`)
    /// # Usage
    ///     let service = Services.Music.self
    ///     // Check if connected to Spotify
    ///     if service.isConnected(.spotify) {
    ///         print("Connected!")
    ///     }
    ///
    static func isConnected(_ service: Services.Music) -> Bool {
        return User.isConnected(music: service)
    }
    /// Sets the `connected` status of the user-selected music service (`Services.Music`)
    /// # Usage
    ///     let service = Services.Music.self
    ///     // User did connect Music
    ///     service.didConnect(true, .apple)
    ///     // User did disconnect Spotify
    ///     service.didConnect(false, .spotify)
    static func didConnect(_ state: Bool, service: Services.Music) {
        Settings.save(state, forKey: service.keyValue)
    }
    
}
