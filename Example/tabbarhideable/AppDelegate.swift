//
//  AppDelegate.swift
//  tabbarhideable
//
//  Created by Ezequiel on 30/07/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    private var myTabBarController: UITabBarHideableController!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let myFirstTab: UIViewController = FirstViewController()
        let mySecondTab: UIViewController = SecondViewController()
        
        let myTabs = NSArray(objects: myFirstTab, mySecondTab)
        
        myTabBarController = UITabBarHideableController()
        
        // Set ViewControllers
        myTabBarController?.setViewControllers(myTabs as? [UIViewController], animated: false)
        
        // Set TabBar as RootViewController
        self.window!.rootViewController = myTabBarController
        
        self.window!.makeKeyAndVisible()
        
        return true
    }
    
    
}

