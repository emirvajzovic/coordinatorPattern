//
//  MainTabBarController.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import UIKit

class MainTabBarController: UITabBarController {
    
    var coordinator: Coordinator?
    
    override var viewControllers: [UIViewController]? {
        didSet { configureTabBar() }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.isTranslucent = false
    }
    
    private func configureTabBar() {
        viewControllers?.forEach({ viewController in
            guard let nav = viewController as? UINavigationController,
                let vc = nav.viewControllers.first else { return }

            switch vc {
            case is FirstViewController:
                vc.tabBarItem = UITabBarItem(title: "First",
                                             image: UIImage.init(systemName: "1.circle"),
                                             tag: 0)
            case is SecondViewController:
                vc.tabBarItem = UITabBarItem(title: "Second",
                                             image: UIImage.init(systemName: "2.circle"),
                                             tag: 1)
            case is ThirdViewController:
                vc.tabBarItem = UITabBarItem(title: "Third",
                                             image: UIImage.init(systemName: "2.circle"),
                                             tag: 2)
            default:
                break
            }
        })
    }
}
