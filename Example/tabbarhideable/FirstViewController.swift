//
//  FirstViewController.swift
//  tabbarhideable
//
//  Created by Ezequiel on 30/07/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITabbarItemHideable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem = getTabbarItem(tabBarSystemItem: .featured, tag: 1)
        self.view.backgroundColor = UIColor.red
        let button = UIButton(frame: CGRect(x: self.view.center.x - 30, y: self.view.center.y - 30, width: 60, height: 60))
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(hideTapped), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    func hideTapped() {
        print("tapped xxx")
        if !(self.tabBarController as! UITabBarHideableController).isHidded {
            (self.tabBarController as! UITabBarHideableController).hideTabBar(animated: true, duration: 0.75)
        }
        else {
            (self.tabBarController as! UITabBarHideableController).showTabBar(animated: true)
        }
    }
}

