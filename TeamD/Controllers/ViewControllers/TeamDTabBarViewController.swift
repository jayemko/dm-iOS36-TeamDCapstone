//
//  TeamDTabBarViewController.swift
//  TeamD
//
//  Created by Jason Koceja on 11/9/20.
//

import UIKit

struct TeamDSegues {
    let identifierMain = "teamDBrendenSegue"
    let identifierJason = "teamDJasonSegue"
    let identifierTrevor = "teamDTrevorSegue"
    let identifierBrenden = "teamDBrendenSegue"
}

class TeamDTabBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
}

extension TeamDTabBarViewController : UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //
        
    }
}
