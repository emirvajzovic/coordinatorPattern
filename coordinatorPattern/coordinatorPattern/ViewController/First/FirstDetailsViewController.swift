//
//  FirstDetailsViewController.swift
//  coordinatorPattern
//
//  Created by Emir Vajzovic on 10. 3. 2021..
//

import UIKit

class FirstDetailsViewController: BaseViewController {
    @IBOutlet weak var detailsLabel: UILabel!
    
    var details: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "First details view controller"
        detailsLabel.text = details
    }
    
}

