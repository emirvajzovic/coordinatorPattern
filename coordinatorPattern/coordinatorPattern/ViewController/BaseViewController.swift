//
//  BaseViewController.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import Foundation
import UIKit

protocol Coordinatable {
    var coordinator: Coordinator? { get set }
}

class BaseViewController: UIViewController, Coordinatable {
    var coordinator: Coordinator?
}

extension UIViewController {
    
    class var storyboardID : String {
        return "\(self)"
    }
    
    static func instantiate(from storyboard: AppStoryboard) -> Self {
        return storyboard.viewController(viewControllerClass: self)
    }
    
    static func getNavigation(from storyboard: AppStoryboard) -> UINavigationController {
        guard let nav = storyboard.initialViewController() as? UINavigationController else {
            return BaseNavigationController()
        }
        return nav
    }
}
