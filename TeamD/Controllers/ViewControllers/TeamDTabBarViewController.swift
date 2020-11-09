//
//  TeamDTabBarViewController.swift
//  TeamD
//
//  Created by Jason Koceja on 11/9/20.
//

import UIKit

class TeamDTabBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        PersonController.shared.load()
    }
    
}
