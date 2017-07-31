//
//  SecondViewController.swift
//  tabbarhideable
//
//  Created by Ezequiel on 30/07/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITabbarItemHideable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem = getTabbarItem(tabBarSystemItem: .search, tag: 2)
        self.view.backgroundColor = UIColor.blue
        
        let button = UIButton(frame: CGRect(x: self.view.center.x - 30, y: self.view.center.y - 30, width: 60, height: 60))
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(hideTapped), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    func hideTapped() {
        if !(self.tabBarController as! UITabBarHideableController).isHidded {
            (self.tabBarController as! UITabBarHideableController).hideTabBar(animated: true)
        }
        else {
            (self.tabBarController as! UITabBarHideableController).showTabBar(animated: true, duration: 0.75)
        }
    }
}
