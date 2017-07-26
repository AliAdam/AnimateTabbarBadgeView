//
//  TabBarController+Extension.swift
//  AnimateTabbarBadgeView
//
//  Created by Ali Adam on 7/26/17.
//  Copyright © 2017 Ali Adam. All rights reserved.
//

import Foundation
import UIKit

extension UITabBarController {
    func animateTabBarBadgeView(){
        loopThrowViews(view:  self.tabBar)
    }
    func loopThrowViews(view:UIView){
        for subview in (view.subviews){
            let type = String(describing: type(of: subview))
            print(type)
            if type == "_UIBadgeView" {
                print("this is BadgeView")
                print("index = \(String(describing: subview.superview?.tag))")
                animateView(view: subview)
            }
            else {
                loopThrowViews(view:subview)
            }
            
        }
    }
    
    func animateView(view:UIView){
        let shakeAnimation = CABasicAnimation(keyPath: "position")
        //shakeAnimation.duration = 0.05
        shakeAnimation.repeatCount = 1050
        shakeAnimation.autoreverses = true
        shakeAnimation.fromValue = NSValue(cgPoint: CGPoint(x:view.center.x - 10, y:view.center.y))
        shakeAnimation.toValue = NSValue(cgPoint: CGPoint(x:view.center.x + 10, y:view.center.y))
        view.layer.add(shakeAnimation, forKey: "position")
    }
    
}
