//
//  UITabbarItemHideable.swift
//  tabbarhideable
//
//  Created by Ezequiel on 30/07/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import Foundation
import UIKit

protocol UITabbarItemHideable {
    //var isHidded:Bool { get set }
    func getTabbarItem(coder:NSCoder) -> UITabBarItem?
    func getTabbarItem(title: String?, image: UIImage?, tag: Int) -> UITabBarItem
    func getTabbarItem(title: String?, image: UIImage?, selectedImage: UIImage?) -> UITabBarItem
    func getTabbarItem(tabBarSystemItem systemItem: UITabBarSystemItem, tag: Int) -> UITabBarItem
}

extension UITabbarItemHideable {
    func getTabbarItem(coder:NSCoder) -> UITabBarItem? {
        return UITabBarItem(coder: coder)
    }
    
    func getTabbarItem(title: String?, image: UIImage?, tag: Int) -> UITabBarItem {
        return UITabBarItem(title: title, image: image, tag: tag)
    }
    
    func getTabbarItem(title: String?, image: UIImage?, selectedImage: UIImage?) -> UITabBarItem {
        return UITabBarItem(title: title, image: image, selectedImage: selectedImage)
    }
    
    func getTabbarItem(tabBarSystemItem systemItem: UITabBarSystemItem, tag: Int) -> UITabBarItem {
        return UITabBarItem(tabBarSystemItem: systemItem, tag: tag)
    }
}
