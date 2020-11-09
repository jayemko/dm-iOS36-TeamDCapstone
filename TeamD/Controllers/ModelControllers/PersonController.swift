//
//  PersonController.swift
//  TeamD
//
//  Created by Trevor Bursach on 11/9/20.
//

import Foundation

class PersonController {
    
    static let shared = PersonController()
    
    var people: [Person] = []
    
    func demoData() {
        let demoPeople = [
            Person(name: "Jason", age: 39, location: "Seattle, Washington", bio: "Likes long walks on the beach", favoriteMovie: "Boiler Room", riddle: "Knock Knock", personImageString: "jason"),
            Person(name: "Brenden", age: 23, location: "Fort Worth, Texas", bio: "Enjoys eating food", favoriteMovie: "", riddle: "Can you name three consecutive days without using Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, or Sunday?", personImageString: "brenden"),
            Person(name: "Trevor", age: 24, location: "Eagle Mountain, Utah", bio: "Don't ever, for any reason, do anything, to anyone, for any reason, ever, no matter what, no matter where, or who, or who you are with, or where you are going, or where you've been, ever, for any reason whatsoever.", favoriteMovie: "Infinity War", riddle: "How much", personImageString: "trevor")]
        
        people = demoPeople
        save()
    }
    
    func createFileForPersistence() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileUrl = urls[0].appendingPathComponent("TeamD.json")
        return fileUrl
    }
    
    func save() {
        let jsonEncoder = JSONEncoder()
        do {
            let jsondPeople = try jsonEncoder.encode(people)
            try jsondPeople.write(to: createFileForPersistence())
        } catch {
            print(error)
            print(error.localizedDescription)
        }
    }
    
    func load() {
        let jsonDecoder = JSONDecoder()
    
            do {
                let jsonData = try Data(contentsOf: createFileForPersistence())
                let decodedPeople = try jsonDecoder.decode([Person].self, from: jsonData)
                people = decodedPeople
            }catch {
                demoData()
                print(error)
                print(error.localizedDescription)
        }
    }
}
