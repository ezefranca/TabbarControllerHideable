# TabbarControllerHideable
A drop in UITabbarController with show and hide options

# TabbarControllerHideable

[![CI Status](http://img.shields.io/travis/ezefranca/TabbarControllerHideable.svg?style=flat)](https://travis-ci.org/ezefranca/TabbarControllerHideable)
[![Version](https://img.shields.io/cocoapods/v/TabbarControllerHideable.svg?style=flat)](http://cocoapods.org/pods/TabbarControllerHideable)
[![License](https://img.shields.io/cocoapods/l/TabbarControllerHideable.svg?style=flat)](http://cocoapods.org/pods/TabbarControllerHideable)
[![Platform](https://img.shields.io/cocoapods/p/TabbarControllerHideable.svg?style=flat)](http://cocoapods.org/pods/TabbarControllerHideable)

![](https://media.giphy.com/media/zSrnDtfRtgiQM/giphy.gif)

## Requirements

- Xcode 8.0+
- iOS 8.3+

## Installation

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `TabbarControllerHideable` by adding it to your `Podfile`:

```ruby
use_frameworks!
pod 'TabbarControllerHideable'
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage example

To start the TabbarControllerHideable programmatically you can initialize like a normal ```UITabbarController```

```swift

        let firstTab: UIViewController = UIViewController()
        let secondTab: UIViewController = UIViewController() 
        let tabs = NSArray(objects: firstTab, secondTab)
        
        let tabBarController = UITabBarHideableController()
        
        // Set ViewControllers
        tabBarController?.setViewControllers(tabs as? [UIViewController], animated: false)

```

To use the show / hide methods, yours controllers need the ```UITabbarItemHideable``` protocol and get the tabbar item programmatically using one of the protocols methods: 

```swift
    func getTabbarItem(coder:NSCoder) -> UITabBarItem?
    func getTabbarItem(title: String?, image: UIImage?, tag: Int) -> UITabBarItem
    func getTabbarItem(title: String?, image: UIImage?, selectedImage: UIImage?) -> UITabBarItem
    func getTabbarItem(tabBarSystemItem systemItem: UITabBarSystemItem, tag: Int) -> UITabBarItem
```


```swift

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
        if !(self.tabBarController as! UITabBarHideableController).isHidded {
            (self.tabBarController as! UITabBarHideableController).hideTabBar(animated: true, duration: 0.75)
        }
        else {
            (self.tabBarController as! UITabBarHideableController).showTabBar(animated: true)
        }
    }
}


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


```

## Author

ezefranca, ezequiel.ifsp@gmail.com

## License

TabbarControllerHideable is available under the MIT license. See the LICENSE file for more info.

