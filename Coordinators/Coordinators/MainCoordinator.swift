//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Ben Huggins on 4/9/22.
//

import UIKit


class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

//    func start() {
//        let vc = ViewController.instantiate()
//        navigationController.pushViewController(vc, animated: false)
//    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buySubscription() {
        print("made to mainCoordinator Buy")
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        print("made to mainCoordinator Create")
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
