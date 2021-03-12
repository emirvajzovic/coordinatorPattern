//
//  Coordinator.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import UIKit

class Coordinator: NSObject {
    weak var parentCoordinator: Coordinator?
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    func openChild<T: Coordinator>(coordinator: T.Type) {
        let child = T(navigationController: navigationController)
        childCoordinators.append(child)
        child.parentCoordinator = self
        child.start()
    }
    
    func createChildCoordinator<T: Coordinator>() -> T {
        let child = T(navigationController: BaseNavigationController())
        childCoordinators.append(child)
        child.parentCoordinator = self
        return child
    }
    
    func present(_ viewController: BaseViewController, animated: Bool = true) {
        viewController.coordinator = self
        navigationController.present(viewController, animated: true, completion: nil)
    }
    
    func show(_ viewController: BaseViewController, animated: Bool = true) {
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    func getChild<T: Coordinator>(coordinator: T.Type) -> T? {
        return childCoordinators.filter {$0 is T}.first as? T
    }
}
