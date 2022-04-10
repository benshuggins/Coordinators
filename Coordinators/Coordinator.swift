//
//  Coordinator.swift
//  Coordinators
//
//  Created by Ben Huggins on 4/9/22.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }  // future child coordinators for other navigational tasks
    var navigationController: UINavigationController { get set }

    func start()
}
