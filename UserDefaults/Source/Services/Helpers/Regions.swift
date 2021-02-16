//
//  Regions.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import Foundation

extension Services {
    
    enum Regions {
        case all
        case us
        case ca
        
        var rawString: String {
            switch self {
            case .all:  return "all"
            case .us:   return "us"
            case .ca:   return "ca"
            }
        }
        
        var locale: String {
            switch self {
            case .all:  return "en"
            case .us:   return "en-us"
            case .ca:   return "en-ca"
            }
        }
    }
    
}
