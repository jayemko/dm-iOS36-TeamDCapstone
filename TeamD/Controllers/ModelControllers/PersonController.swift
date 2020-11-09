//
//  PersonController.swift
//  TeamD
//
//  Created by Trevor Bursach on 11/9/20.
//

import Foundation

func createFileForPersistence() -> URL {
    let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    let fileUrl = urls[0].appendingPathComponent("TeamD.json")
    return fileUrl
}

func save() {
    let jsonEncoder = JSONEncoder()
    do {
        let jsond<#Quotes#> = try jsonEncoder.encode(<#quotes#>)
        try jsond<#Quotes#>.write(to: createFileForPersistence())
    } catch {
        print(error)
        print(error.localizedDescription)
    }
}

func load() {
    let jsonDecoder = JSONDecoder()
    
    do {
        let jsonData = try Data(contentsOf: createFileForPersistence())
        let decoded<#Quotes#> = try jsonDecoder.decode([<#Quote#>].self, from: jsonData)
        <#quotes#> = decoded<#Quotes#>
    }catch {
        print(error)
        print(error.localizedDescription)
    }
}
