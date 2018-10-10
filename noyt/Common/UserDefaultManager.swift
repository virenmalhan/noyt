//
//  UserDefaultManager.swift
//  noyt
//
//  Created by Viren Malhan on 01/10/18.
//  Copyright © 2018 Wecode. All rights reserved.
//

import UIKit

enum UserDefaultType {
    case appGroup, shared
}


enum UserDefaultKey: String {
    case dashboardData = "dashboardData"
}

struct NoytUserDefaultManager {
    
    private static let appGroup = UserDefaults(suiteName: "group.com.noyt")
    private static let shared = UserDefaults.standard

    static func set(value: Any?, key: String, userDefaultType: UserDefaultType = .shared) {
        switch userDefaultType {
        case .appGroup:
            NoytUserDefaultManager.appGroup?.set(value, forKey: key)
        case .shared:
            NoytUserDefaultManager.shared.set(value, forKey: key)
        }
    }

    static func get(key: String, userDefaultType: UserDefaultType = .shared) -> Any? {
        switch userDefaultType {
        case .appGroup:
            return NoytUserDefaultManager.appGroup?.value(forKey: key)
        case .shared:
            return NoytUserDefaultManager.shared.value(forKey: key)
        }

    }
  
}


