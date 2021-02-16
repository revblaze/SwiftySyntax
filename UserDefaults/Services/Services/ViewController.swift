//
//  ViewController.swift
//  Services
//
//  Created by Justin Bush on 2021-02-16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func musicTests() {
        
        let service = Services.Music.self
        
        // Get Spotify URL
        _ = service.apple.url
        
        // User did connect to Spotify
        service.didConnect(true, service: .spotify)
        
        // Get Spotify connection status
        _ = service.isConnected(.spotify)   // returns true
        
        // Disconnect from Apple Music
        service.didConnect(false, service: .apple)
    }
    
    func showTests() {
        let service = Services.Shows.self
        
        // Get Netflix URL
        _ = service.netflix.url
        
        // User did connect to Netflix
        service.didConnect(true, service: .netflix)
        
        // Get Netflix connection status
        _ = service.isConnected(.netflix)   // returns true
        
        // Disconnect from Disney+
        service.didConnect(false, service: .disney)
        
    }


}

