//
//  UITabBarHideableController.swift
//  tabbarhideable
//
//  Created by Ezequiel on 30/07/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import UIKit

class UITabBarHideableController: UITabBarController {
    
    public var isHidded:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension UITabBarHideableController {
    
    func showTabBar(animated:Bool, duration : Double = 0.1) {
        UIView.animate(withDuration: duration, animations: {
            self.isHidded = false
            self.tabBar.transform = CGAffineTransform.identity
        })
    }
    
    func hideTabBar(animated:Bool, duration : Double = 0.1) {
        UIView.animate(withDuration: duration, animations: {
            self.isHidded = true
            self.tabBar.transform = CGAffineTransform(translationX: 0, y: 50)
        })
    }
}
