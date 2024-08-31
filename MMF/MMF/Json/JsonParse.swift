//
//  JsonParse.swift
//  MMF
//
//  Created by Круглич Влад on 31.03.24.
//

import Foundation
func JsonParse(jsonString: String) -> [Person]? {
    let jsonData = Data(jsonString.utf8)
    do {
        let people = try JSONDecoder().decode([Person].self, from: jsonData)
        return people
    } catch {
        print("Ошибка при парсинге JSON: \(error)")
        return nil
    }
}
