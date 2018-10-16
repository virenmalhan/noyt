//
//  AppDelegateManager.swift
//  noyt
//
//  Created by Viren Malhan on 01/10/18.
//  Copyright © 2018 Wecode. All rights reserved.
//

import UIKit
import Firebase

struct AppDelegateManager {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        FirebaseApp.configure()
    }
    
}
