//
//  ViewController.swift
//  Coordinators
//
//  Created by Ben Huggins on 4/9/22.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
   
    
    }


    @IBAction func buyButtonTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
   
    
    @IBAction func createAccountButtonTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
}

