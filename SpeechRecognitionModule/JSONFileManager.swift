//
//  JSONFileManager.swift
//  DyslexicABC
//
//  Created by Lidiane Gomes Barbosa on 08/02/23.
//

import Foundation

public class JSONFileManager {
    var jsonString: String

    init(jsonString: String) {
        self.jsonString = jsonString
        generateFile(jsonString: jsonString)
    }
    
    private func generateFile(jsonString: String) {
        if let documentDirectory = FileManager.default.urls(for: .desktopDirectory,
                                                            in: .userDomainMask).first {
            let pathWithFilename = documentDirectory.appendingPathComponent("teste-historia-do-mar2.json")
            do {
                try jsonString.write(to: pathWithFilename,
                                     atomically: true,
                                     encoding: .utf8)
            } catch {
                // Handle error
            }
        }
    }
}
