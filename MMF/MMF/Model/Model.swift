//
//  Model.swift
//  MMF
//
//  Created by Круглич Влад on 27.03.24.
//

import Foundation
import SwiftUI
import FirebaseFirestore
class Model : ObservableObject {
    @Published var thisPage = false
    @Published var isLogin = false
    @Published var signOut = false
    @Published var signUp = false
    @Published var error = ""
    @Published var logIngBack = false
    @Published var signUpBack = false
    @Published var name = ""
    @Published var surname = ""
    @Published var patronymic = ""
    
    @Published var user : [String: Any] = [:]
    @Published var messages = [Message]()
    
    @Published var otherName = ""
    @Published var otherSurname = ""
    @Published var otherPatronymic = ""
    @Published var otherEmail = ""
    
    
    
    @Published var nameCourseWork = ""
    @Published var findNameCourseWork = ""
    @Published var teacher = ""
    @Published var whoMake = ""

    
    @Published var courseWorks : [CourseWork] = [
    CourseWork(name: "Редизайн геометрических", whoMake: nil, teacher: "Позняк"),
    CourseWork(name: "Тема по выбору студента", whoMake: "Яхновец", teacher: "Позняк"),
    CourseWork(name: "Тема по выбору студента", whoMake: "Яхновец", teacher: "Позняк"),
    CourseWork(name: "Тема по выбору студента", whoMake: "Яхновец", teacher: "Позняк"),
    CourseWork(name: "Тема по выбору студента", whoMake: "Яхновец", teacher: "Позняк"),
    CourseWork(name: "Редизайн геометрических объектов3", whoMake: nil, teacher: "Позняк")
    ]
    @Published var courseWorksFind : [CourseWork] = []
    

    func findCourseWork(findNameCourseWork: String) {
        var foundCourseWorks = [CourseWork]()
        var found = false
        
        for coursework in courseWorks {
            if coursework.name.lowercased().contains(findNameCourseWork.lowercased()) ||
               coursework.teacher.lowercased().contains(findNameCourseWork.lowercased()) ||
               (coursework.whoMake?.lowercased().contains(findNameCourseWork.lowercased()) ?? false) {
                foundCourseWorks.append(coursework)
                found = true
            }
        }
        
        if findNameCourseWork.isEmpty {
            foundCourseWorks = courseWorks
        } else if !found {
            foundCourseWorks.append(CourseWork(name: "Таких работ нет", teacher: ""))
        }
        
        courseWorksFind = foundCourseWorks
    }
    
    func addCourseWork(name: String, teacher: String, whoMake: String?) {
        courseWorks.append(CourseWork(name: name, whoMake: whoMake, teacher: teacher))
    }



}


struct User {
    var name: String
    var patronymic : String
    var surname: String
    var email : String
    var password : String
}

struct CourseWork : Hashable {
    let id : String = UUID().uuidString
    var name : String
    var whoMake : String?
    var teacher : String
}
