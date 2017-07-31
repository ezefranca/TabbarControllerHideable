//
//  FirstViewController.swift
//  tabbarhideable-storyboard
//
//  Created by Ezequiel França on 31/07/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import UIKit

class FirstStoryboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideShow(_ sender: Any) {
        if !(self.tabBarController as! UITabBarHideableController).isHidded {
            (self.tabBarController as! UITabBarHideableController).hideTabBar(animated: true, duration: 0.75)
        }
        else {
            (self.tabBarController as! UITabBarHideableController).showTabBar(animated: true)
        }
    }
}

