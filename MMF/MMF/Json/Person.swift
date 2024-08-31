//
//  Person.swift
//  MMF
//
//  Created by Круглич Влад on 31.03.24.
//

import Foundation
//import SwiftData

//@Model
struct Person : Codable, Hashable {
    let name: String
    let email: String
    let img: URL
}

//final class Person {
//    let id : UUID
//    let name: String
//    let email: String
//    let img: URL
//
//    init(name: String, email: String, img: URL) {
//        self.id = UUID().uuidString
//        self.name = name
//        self.email = email
//        self.img = img
//    }
//}
