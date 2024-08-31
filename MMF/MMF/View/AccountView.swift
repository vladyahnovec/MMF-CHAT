//
//  AccountView.swift
//  MMF
//
//  Created by Круглич Влад on 26.03.24.
//

import Foundation
import SwiftUI

struct AccountView : View {
    @ObservedObject var model : Model
    @Binding var selectedTab : String
    @Binding var showSpinner : Bool
    @ObservedObject var vm : ChatLogViewModel
    var body: some View {
        if model.signOut {
            LogInView()
        }
        else {
            VStack {
                HeaderView()
                HStack {
                    Spacer()
                    Rectangle()
                        .fill(.green)
                        .frame(width: 127, height: 127)
                        .cornerRadius(100)
                        .padding(.top, 20)
                        .padding(.bottom, 27)
                    VStack() {
                        Button(action: {
                            model.signOut=true
                            model.isLogin = false
                            model.signUp = false
                        }) {
                            HStack(spacing: 3) {
                                Text("Выйти")
                                    .foregroundColor(Color.greenColor)
                                    .font(.custom("Inter-Regular", size: 18))
                                Image(systemName: "arrow.right")
                                    .foregroundColor(Color.greenColor)
                                
                            }
                        }
                        .padding(.top, 30)
                        .padding(.leading, 25)
                        Spacer()
                    }
                    .frame(height: 220)
                }
                .padding(.horizontal, 20)
                VStack(spacing: 15) {
                    ZStack {
                        Rectangle()
                            .fill(Color.lightGreenColor)
                            .frame(width: 364, height: 54)
                            .cornerRadius(10)
                        HStack {
                            Image(systemName: "person")
                                .foregroundColor(Color.lightGrayColor)
                                .font(.system(size: 24))
                                .padding(.leading, 14)
                            Text("\(model.user["surname"] as! String) \(model.user["name"] as! String) \(model.user["patronymic"] as! String)")
                                .foregroundColor(.white)
                                .font(.custom("Inter-Regular", size: 18))
                            Spacer()
                        }
                        .frame(width: 364, height: 54)
                    }
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.lightGreenColor)
                            .frame(width: 364, height: 54)
                            .cornerRadius(10)
                        HStack {
                            Image("usertag")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                .padding(.leading, 14)
                            Text(model.user["email"] as! String)
                                .foregroundColor(.white)
                                .font(.custom("Inter-Regular", size: 18))
                            Spacer()
                        }
                        .frame(width: 364, height: 54)
                    }
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.lightGreenColor)
                            .frame(width: 364, height: 54)
                            .cornerRadius(10)
                        HStack {
                            Image("lock")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                .padding(.leading, 14)
                            Text(model.user["password"] as! String)
                                .foregroundColor(.white)
                                .font(.custom("Inter-Regular", size: 18))
                            Spacer()
                            Image("edit")
                                .padding(.trailing, 15)
                        }
                        .frame(width: 364, height: 54)
                    }
                    
                    DropDownView()
                }
                Spacer()
                TabView(image: "house", selectedTab: $selectedTab, vm: vm, showSpinner: $showSpinner)
                    .background(Color.greenColor)
                    .foregroundColor(.white)
                    .frame(height: 60)
            }
        }
    }
}

extension String {
    func maskedPassword() -> String {
        return String(repeating: "•", count: self.count)
    }
}
