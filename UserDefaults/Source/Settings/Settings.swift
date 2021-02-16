//
//  Settings.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import Foundation

struct Settings {
    
    // MARK: Default Settings
    /// Reset to default app settings
    static func setDefaults() {
        //User.setDefault()
        sync()
    }
    /*
    /// Print current app settings
    static func printDefaults() {
        let defaults = """
        Music.apple: \(String(describing: Settings.Music.apple.keyValue))
        """
        print(defaults)
    }
    */
    
    static func sync() {
        UserDefaults.standard.synchronize()
    }
    
    // MARK: Save to Defaults
    /// Saves any `value` with corresponding `key` to `UserDefaults` iff the value is an allowed type.
    /// # Usage
    ///     DefaultsManager.save(true, forKey: Keys.hasLaunchedBefore
    /// - Parameters:
    ///     - value: The value to be saved to UserDefaults (see `allowedTypes` in `DefaultsManager`)
    static func save(_ value: Any, forKey: String) {
        DefaultsManager.save(value, forKey: forKey)
    }
    
}
