//
//  DefaultsManager.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import Foundation

struct DefaultsManager {
    
    static func allowedType(_ object: Any) -> Bool {
        switch object {
        case is Bool: return true
        case is String: return true
        case is URL: return true
        case is Int: return true
        case is Double: return true
        case is Float: return true
        case is Array<String>: return true
        default: return false
        }
    }
    /// Saves any `value` with a corresponding `key` to `UserDefaults` iff the value is of an allowed type.
    /// # Usage
    ///     DefaultsManager.save(true, forKey: Keys.hasLaunchedBefore
    /// - Parameters:
    ///     - value: The value to be saved to UserDefaults (see `allowedTypes` in `DefaultsManager`)
    ///     - forKey: The key-value `String` that corresponds with the value saved
    static func save(_ value: Any, forKey: String) {
        if allowedType(value) {
            print("Setting UserDefault: \(value), forKey: \(forKey)")
            UserDefaults.standard.set(value, forKey: forKey)
            UserDefaults.standard.synchronize()
        } else {
            print("Error: invalid UserDefault type\nUnable to set UserDefault: \(value), forKey: \(forKey)")
        }
    }
    
}
