//
//  Shows.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import Foundation

extension Services.Shows {
    
    var id: Int {
        switch self {
        case .netflix:  return 1001
        case .prime:    return 1002
        case .apple:    return 1003
        case .disney:   return 1004
        case .youtube:  return 1005
        case .hbo:      return 1006
        case .hulu:     return 1007
        case .crave:    return 1008
        }
    }
    
    var url: String {
        switch self {
        case .netflix:  return "https://www.netflix.com/browse"
        case .prime:    return "https://www.primevideo.com"
        case .apple:    return "https://tv.apple.com"
        case .disney:   return "https://www.disneyplus.com"
        case .youtube:  return "https://www.youtube.com"
        case .hbo:      return "https://www.hbomax.com"
        case .hulu:     return "https://www.hulu.com"
        case .crave:    return "https://www.crave.ca"
        }
    }
    
    var region: Services.Regions {
        switch self {
        case .netflix:  return .all
        case .prime:    return .all
        case .apple:    return .all
        case .disney:   return .all
        case .youtube:  return .all
        case .hbo:      return .us
        case .hulu:     return .us
        case .crave:    return .ca
        }
    }
    
    /// Gets the active connection status of the movie/tv service (`Services.Shows`)
    /// # Usage
    ///     let service = Services.Shows.self
    ///     // Check if connected to Netflix
    ///     if service.isConnected(.netflix) {
    ///         print("Connected!")
    ///     }
    ///
    static func isConnected(_ service: Services.Shows) -> Bool {
        return User.isConnected(network: service)
    }
    /// Sets the `connected` status of the user-selected movie/tv service (`Services.Shows`)
    /// # Usage
    ///     let service = Services.Shows.self
    ///     // User did connect to Netflix
    ///     service.didConnect(true, .netflix)
    ///     // User did disconnect Disney+
    ///     service.didConnect(false, .disney)
    static func didConnect(_ state: Bool, service: Services.Shows) {
        Settings.save(state, forKey: service.keyValue)
    }
    
}
