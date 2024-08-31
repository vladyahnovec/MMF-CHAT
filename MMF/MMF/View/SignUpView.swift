//
//  SignUpView.swift
//  MMF
//
//  Created by Круглич Влад on 27.03.24.
//
import Foundation
import SwiftUI

struct SignUpView : View {
    @ObservedObject var model : Model
    @State var name = ""
    @State var surname = ""
    @State var patronymic = ""
    
    @State var email = ""
    @State var password = ""
    let fbManager = FireBaseManager()
    var body: some View {
        if (model.signUp) {
            MainView(model: model)
        }
        else if (model.logIngBack) {
            LogInView()
        }
        else {
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 240, height: 76)
                        .padding(.bottom, 30)
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .cornerRadius(20)
                        VStack(spacing: 0) {
                            
                            HStack {
                                Button(action: {
                                    model.error = ""
                                    model.logIngBack = true
                                    print(model.logIngBack)
                                }) {
                                    Text("Уже есть аккаунт?")
                                        .font(.custom("Inter-Regular", size: 20))
                                        .padding(.bottom, 5)
                                        .foregroundColor(.black)
                                        .padding(.leading, 20)
                                }
                                Spacer()
                            }
                            InputLogInView(imageName: "person.crop.circle", text: "Имя", bindingN: $name)
                            InputLogInView(imageName: "person.crop.circle", text: "Фамилия", bindingN: $surname)
                            InputLogInView(imageName: "person.crop.circle", text: "Отчество", bindingN: $patronymic)
                            InputLogInView(imageName: "person.crop.circle", text: "Почта", bindingN: $email)
                            InputLogInView(imageName: "lock", text: "Пароль", bindingN: $password)
                            
                            Text(model.error)
                                .frame(width: 280)
                                .foregroundColor(.red)
                                .padding(.top, 20)
                                .multilineTextAlignment(.center)
                            Button(action: {
                                model.error = checkValid(email: email, password: password, errorCheck: false)
                                fbManager.registerUser(user: UserData(name: name, surname: surname, patronymic: patronymic, email: email, password: password))
                                fbManager.fetchCurrentUser(email: email, password: password) { userData, error in
                                    if let error {
                                        return
                                    }
                                    if let userData {
                                        model.user = userData
                                        model.signUp = true
                                        model.signOut=false
                                        email = ""
                                        password = ""
                                        model.error = ""
                                    }
                                }
                            }) {
                                Text("Зарегистрироваться")
                                    .foregroundColor(.white)
                                    .frame(width: 277, height: 44)
                                    .background(Color.greenColor)
                                    .cornerRadius(20)
                                    .padding(.top, 20)
                                    .font(.custom("Inter-Regular", size: 20))
                                
                            }
                        }
                    }
                    .frame(width: 320, height: 545)
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(Color.greenColor)
            .navigationBarBackButtonHidden(true)
        }
    }
}



struct LogInView2_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

