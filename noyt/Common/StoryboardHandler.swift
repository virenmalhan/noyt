//
//  UIUtils.swift
//  noyt
//
//  Created by Viren Malhan on 01/10/18.
//  Copyright © 2018 Wecode. All rights reserved.
//

import UIKit

// MARK: - Identifies each storyboard though identifier.
protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

// MARK: - Indentifies each storyboard from its classname.
extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension UIStoryboard {
    
    /// The uniform place where we state all the storyboard we have in our application
    enum Storyboard: String {
        case main = "Main"
    }
    
    /// creates a storyboard instance
    ///
    /// - parameter storyboard: Storyboard enum type which has respective storyboard name to be initalised
    /// - parameter bundle:     bundle name which has the storyboard
    ///
    convenience init(_ storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.rawValue, bundle: bundle)
    }
    
    /// Class Functions
    class func storyboard(_ storyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: storyboard.rawValue, bundle: bundle)
    }
    
    
    func instantiateViewController<T: UIViewController>() -> T  {
        return self.instantiateViewController(withIdentifier: T.storyboardIdentifier) as! T 
    }
}

extension UIViewController: StoryboardIdentifiable {}
