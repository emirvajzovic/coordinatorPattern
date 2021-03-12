//
//  FirstViewController.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import UIKit

class FirstViewController: BaseViewController {
    @IBOutlet weak var detailsTextField: UITextField!
    
    var firstCoordination: FirstCoordination? {
        return coordinator as? FirstCoordination
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "First view controller"
    }
    
    @IBAction func detailsTapped(_ sender: Any) {
        firstCoordination?.showFirstDetails(detailsTextField.text)
    }
    
}
