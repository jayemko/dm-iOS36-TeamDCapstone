//
//  TeamDMemberViewController.swift
//  TeamD
//
//  Created by Jason Koceja on 11/9/20.
//

import UIKit

class TeamDMemberViewController: UIViewController {

    
    // MARK: - Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
     @IBOutlet weak var ageLabel: UILabel!
     @IBOutlet weak var locationLabel: UILabel!
     @IBOutlet weak var bioLabel: UILabel!
     @IBOutlet weak var favoriteMovieLabel: UILabel!
     @IBOutlet weak var riddleLabel: UILabel!
     @IBOutlet weak var personImageView: UIImageView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        displayPerson()
    }
    
    // MARK: - Properties
    
    var person: Person? {
        didSet {
            displayPerson()
        }
    }
    
    // MARK: - Helpers

    func displayPerson() {
        guard let person = person else { return }
        nameLabel.text = person.name
        locationLabel.text = person.location
        bioLabel.text = person.bio
        favoriteMovieLabel.text = person.favoriteMovie
        riddleLabel.text = person.riddle
        if let personImage = UIImage(named: person.personImageString) {
            personImageView.image = personImage
        }
        
    }
}
