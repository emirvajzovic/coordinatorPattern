//
//  FirstCoordinator.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import UIKit

class FirstCoordinator: Coordinator {
    var firstViewController: FirstViewController?
    
    weak var mainCoordinator: MainCoordinator? {
        return parentCoordinator as? MainCoordinator
    }
    
    required init(navigationController: UINavigationController) {
        super.init(navigationController: navigationController)
  
        start()
    }
    
    override func start() {
        super.start()

        show(FirstViewController.instantiate(from: .First))
    }
}

extension FirstCoordinator: FirstCoordination {
    func showFirstDetails(_ details: String?) {
        let vc = FirstDetailsViewController.instantiate(from: .First)
        vc.details = details
        show(vc)
    }
}
