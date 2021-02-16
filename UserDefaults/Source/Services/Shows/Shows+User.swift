//
//  Shows+User.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import Foundation

extension User {
    
    /// **Movie/TV Services Model:** Allows for the getting and setting of user movie/tv service data (`Services.Shows`)
    /// # Usage
    ///     // User did connect to Spotify
    ///     Music.didConnect(true, .spotify)
    ///     // Check if user is connected to Spotify
    ///     Music.spotify().isConnected // returns true
    ///
    enum Shows {
//        case netflix(Bool = false)
//        case prime(Bool = false)
//        case apple(Bool = false)
//        case disney(Bool = false)
//        case youtube(Bool = false)
//        case hbo(Bool = false)
//        case hulu(Bool = false)
//        case crave(Bool = false)
        
        /// Sets the `connected` status of the user-selected movie/tv service (`Services.Shows`)
        /// # Usage
        ///     // User connected to Netflix
        ///     User.Shows.didConnect(true, .netflix)
        ///     // User disconnected from Amazon Prime
        ///     User.Shows.didConnect(false, .prime)
        static func didConnect(_ state: Bool, service: Services.Shows) {
            User.didConnect(state, network: service)
        }
        /// Gets the active connection status of the movie/tv service (`Services.Shows`)
        /// # Usage
        ///     // Check if User is connected to Disney+
        ///     User.Shows.isConnected(.disney)
        static func isConnected(_ service: Services.Shows) -> Bool {
            return Settings.Shows.isConnected(service)
        }
    }
    
    /// Sets the `connected` status of the user-selected music service (`Services.Music`)
    /// # Usage
    ///     // User connected to Apple Music
    ///     User.didConnect(true, .apple)
    ///     // User disconnected from Spotify
    ///     User.Music.didConnect(false, .spotify)
    static func didConnect(_ state: Bool, network: Services.Shows) {
        Settings.save(state, forKey: network.keyValue)
    }
    /// Gets the active connection status of the music service (`Services.Music`)
    /// # Usage
    ///     // Check if User is connected to Spotify
    ///     User.isConnected(music: .spotify)
    static func isConnected(network: Services.Shows) -> Bool {
        return Settings.Shows.isConnected(network)
    }
    
}
