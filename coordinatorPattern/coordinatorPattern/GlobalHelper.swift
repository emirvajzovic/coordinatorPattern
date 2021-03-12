//
//  GlobalHelper.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import UIKit

var appDelegate: AppDelegate {
    return UIApplication.shared.delegate as! AppDelegate
}

public func setRoot(viewController: UIViewController) {
    DispatchQueue.main.async {
        appDelegate.window?.rootViewController = viewController
        UIView.transition(with: appDelegate.window!, duration: 0.3, options: .transitionCrossDissolve, animations: {}, completion: nil)
    }
}
