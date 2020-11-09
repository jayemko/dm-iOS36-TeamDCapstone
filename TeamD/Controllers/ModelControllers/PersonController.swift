//
//  PersonController.swift
//  TeamD
//
//  Created by Trevor Bursach on 11/9/20.
//

import Foundation

var people: [Person] = []

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
        print(error)
        print(error.localizedDescription)
    }
}
