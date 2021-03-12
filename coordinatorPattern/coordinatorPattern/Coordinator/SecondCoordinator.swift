//
//  SecondCoordinator.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import UIKit

class SecondCoordinator: Coordinator {
    var secondViewController: SecondViewController?
    
    weak var mainCoordinator: MainCoordinator? {
        return parentCoordinator as? MainCoordinator
    }
    
    required init(navigationController: UINavigationController) {
        super.init(navigationController: navigationController)
  
        start()
    }
    
    override func start() {
        super.start()
        
        show(SecondViewController.instantiate(from: .Second))
    }
}

