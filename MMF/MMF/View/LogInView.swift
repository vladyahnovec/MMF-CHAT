//
//  LogInView.swift
//  MMF
//
//  Created by Круглич Влад on 26.03.24.
//

import Foundation
import SwiftUI
import FirebaseAuth

enum UserDefaultsKeys {
    static let userEmail = "userEmail"
    static let userPassword = "userPassword"
}

struct LogInView : View {
    @StateObject var model = Model()
    @State private var email = UserDefaults.standard.string(forKey: UserDefaultsKeys.userEmail) ?? ""
    @State private var password = UserDefaults.standard.string(forKey: UserDefaultsKeys.userPassword) ?? ""
    let fbManager = FireBaseManager()
    let clModel = ChatLogViewModel()
    @State private var showSpinner:Bool = false

    var body: some View {
        if showSpinner {
            LoaderView()
        }
        else {
            if model.isLogin {
                MainView(model: model )
            }
            else if (model.signUpBack) {
                SignUpView(model: model)
            }
            else {
                    VStack {
                        Image("logo")
                            .resizable()
                            .frame(width: 240, height: 76)
                            .padding(.bottom, 93)
                        ZStack {
                            Rectangle()
                                .fill(.white)
                                .cornerRadius(20)
                            VStack(spacing: 0) {
                                
                                HStack {
                                    Button(action: {
                                        model.signUpBack = true
                                        model.error = ""
                                        print(model.signUpBack)
                                    }) {
                                        Text("У вас нет аккаунта?")
                                            .font(.custom("Inter-Regular", size: 20))
                                            .padding(.bottom, 10)
                                            .foregroundColor(.black)
                                            .padding(.leading, 20)
                                    }
                                    Spacer()
                                }
                                
                                InputLogInView(imageName: "person.crop.circle", text: "Почта", bindingN: $email)
                                
                                InputLogInView(imageName: "lock", text: "Пароль", bindingN: $password)
                                
                                Text(model.error)
                                    .foregroundColor(.red)
                                    .padding(.top, 20)
                                    .padding(.bottom, 10)
                                    .frame(width: 280)
                                    .multilineTextAlignment(.center)
                                Button(action: {
                                    showSpinner.toggle()
                                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
                                        showSpinner = false
                                    }
                                    fbManager.logIn(user: UserData(email: email, password: password))
                                    model.error = checkValid(email: email, password: password, errorCheck: true)
                                    fbManager.fetchCurrentUser(email: email, password: password) { userData, error in
                                        if let error {
                                            return
                                        }
                                        if let userData {
                                            model.user = userData
                                            model.isLogin = true
                                            model.signOut=false
                                            email = ""
                                            password = ""
                                            model.error = ""
                                        }
                                    }
                                }) {
                                    Text("Вход")
                                        .foregroundColor(.white)
                                        .frame(width: 277, height: 44)
                                        .background(Color.greenColor)
                                        .cornerRadius(20)
                                        .padding(.top, 10)
                                        .font(.custom("Inter-Regular", size: 20))
                                }
                            }
                        }
                        .frame(width: 320, height: 345)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(Color.greenColor)
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}



struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    } 
}



