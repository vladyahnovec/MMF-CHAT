//
//  FireBaseManager.swift
//  MMF
//
//  Created by Круглич Влад on 27.03.24.
//

import Foundation
import Firebase
import FirebaseFirestore


class FireBaseManager {
    static let shared = FireBaseManager()
    let auth = Auth.auth()
    
    func registerUser(user: UserData) {
        Auth.auth().createUser(withEmail: user.email, password: user.password) { result, error in
            guard error == nil else {
                print(error?.localizedDescription)
                return
            }
            result?.user.sendEmailVerification()
            if let uid = result?.user.uid {
                Firestore.firestore()
                    .collection("users")
                    .document(uid)
                    .setData([
                        "name": user.name,
                        "surname": user.surname,
                        "patronymic": user.patronymic,
                        "email": user.email,
                        "password": user.password,
                    ], merge: true) {
                        err in print("saved")
                    }
            }
        }
    }
    
    func logIn(user: UserData) {
        Auth.auth().signIn(withEmail: user.email, password: user.password) { result, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
        }
    }
    
    
    func signOut() {
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            UserDefaults.standard.removeObject(forKey: "userEmail")
            UserDefaults.standard.removeObject(forKey: "userPassword")
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
    
    
    func fetchCurrentUser(email: String, password: String, completion: @escaping ([String: Any]?, Error?) -> Void) {
        Firestore.firestore().collection("users").whereField("email", isEqualTo: email).getDocuments { (querySnapshot, error) in
//            if let error = error {
//                print("Error: \(error.localizedDescription)")
//                completion(nil, error)
//                return
//            }
//
            if let document = querySnapshot?.documents.first, document.exists {
                let userData = document.data()
                if let savedPassword = userData["password"] as? String, savedPassword == password {
                    completion(userData, nil)
                }
            }
        }
    }



    
}

struct UserData {
    var name : String?
    var surname : String?
    var patronymic : String?
    var email : String
    var password : String
}

