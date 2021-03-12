//
//  MainCoordinator.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import UIKit

class MainCoordinator: Coordinator {
    
    var tabBarController: MainTabBarController?

    override func start() {
        super.start()
        
        goToMainFlow()
    }
}

extension MainCoordinator {
    func goToMainFlow() {
        childCoordinators.removeAll()
        let firstCoordinator:           FirstCoordinator    = createChildCoordinator()
        let secondCoordinator:          SecondCoordinator   = createChildCoordinator()
        let thirdCoordinator:           ThirdCoordinator    = createChildCoordinator()
       
        let tabBarController = MainTabBarController()
        tabBarController.coordinator = self
        tabBarController.viewControllers = [firstCoordinator.navigationController,
                                            secondCoordinator.navigationController,
                                            thirdCoordinator.navigationController]

        self.tabBarController = tabBarController
        setRoot(viewController: tabBarController)
    }
}

