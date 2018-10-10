//
//  UIExtensionManager.swift
//  noyt
//
//  Created by Viren Malhan on 01/10/18.
//  Copyright © 2018 Wecode. All rights reserved.
//

import UIKit


// MARK:- extension UIView
extension UIView {
    
    func addCornerRadius(radius: CGFloat = 10.0, corners: UIRectCorner = [.allCorners]) {
        let rectShape = CAShapeLayer()
        rectShape.bounds = frame
        rectShape.position = center
        rectShape.path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius)).cgPath
        layer.backgroundColor = UIColor.green.cgColor
        layer.mask = rectShape
    }
    
    func addBorder(color: UIColor = .black, width: CGFloat = 1.0) {
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
}

// MARK:- extension UIViewController
extension UIViewController {
    
    func push(_ viewcontroller: UIViewController, animated: Bool = true) {
        self.navigationController?.pushViewController(viewcontroller, animated: animated)
    }
    
    func pop(animated: Bool = true) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}


