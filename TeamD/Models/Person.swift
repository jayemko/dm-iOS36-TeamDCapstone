//
//  Person.swift
//  TeamD
//
//  Created by Brenden Smith on 11/9/20.
//

import UIKit


class Person: Codable {
    
    let name: String
    var age: Int
    var location: String
    var bio: String
    var favoriteMovie: String
    let riddle: String
    var personImageString: String
    
    init(name: String, age: Int, location: String, bio: String, favoriteMovie: String, riddle: String, personImageString: String) {
        self.name = name
        self.age = age
        self.location = location
        self.bio = bio
        self.favoriteMovie = favoriteMovie
        self.riddle = riddle
        self.personImageString = personImageString
    }
} // END OF CLASS
