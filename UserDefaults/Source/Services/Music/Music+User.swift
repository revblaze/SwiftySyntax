//
//  Music+User.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import Foundation

extension User {
    /// **Music Services Model:** Allows for the getting and setting of user music service data (`Services.Music`)
    /// # Usage
    ///     // User did connect to Spotify
    ///     Music.didConnect(true, .spotify)
    ///     // Check if user is connected to Spotify
    ///     Music.spotify().isConnected // returns true
    ///
    enum Music {
        case apple(Bool = false)
        case spotify(Bool = false)
        
        /// Gets the active connection status of the music service (`Services.Music`)
        /// # Usage
        ///     // Check if User is connected to Spotify
        ///     User.Music.spotify().isConnected(false, service: .spotify)
        var isConnected: Bool {
            switch self {
            case .apple(_):     return Settings.Music.apple
            case .spotify(_):   return Settings.Music.spotify
            }
        }
        /// Sets the `connected` status of the user-selected music service (`Services.Music`)
        /// # Usage
        ///     // User connected to Apple Music
        ///     User.Music.apple(true).didConnect
        ///     // User disconnected from Spotify
        ///     User.Music.spotify(true).didConnect
        var didConnect: Void {
            switch self {
            case .apple(let state):     User.didConnect(state, music: .apple)
            case .spotify(let state):   User.didConnect(state, music: .spotify)
            }
        }
        /// Sets the `connected` status of the user-selected music service (`Services.Music`)
        /// # Usage
        ///     // User connected to Apple Music
        ///     User.Music.didConnect(true, .apple)
        ///     // User disconnected from Spotify
        ///     User.Music.didConnect(false, .spotify)
        static func didConnect(_ state: Bool, service: Services.Music) {
            User.didConnect(state, music: service)
        }
        /// Gets the active connection status of the music service (`Services.Music`)
        /// # Usage
        ///     // Check if User is connected to Spotify
        ///     User.Music.isConnected(.spotify)
        static func isConnected(_ service: Services.Music) -> Bool {
            return Settings.Music.isConnected(service)
        }
    }
    /// Sets the `connected` status of the user-selected music service (`Services.Music`)
    /// # Usage
    ///     // User connected to Apple Music
    ///     User.didConnect(true, .apple)
    ///     // User disconnected from Spotify
    ///     User.Music.didConnect(false, .spotify)
    static func didConnect(_ state: Bool, music: Services.Music) {
        Settings.save(state, forKey: music.keyValue)
    }
    /// Gets the active connection status of the music service (`Services.Music`)
    /// # Usage
    ///     // Check if User is connected to Spotify
    ///     User.isConnected(music: .spotify)
    static func isConnected(music: Services.Music) -> Bool {
        return Settings.Music.isConnected(music)
    }
}
