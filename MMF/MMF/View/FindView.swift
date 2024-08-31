//
//  FindView.swift
//  MMF
//
//  Created by Круглич Влад on 26.03.24.
//

import Foundation
import SwiftUI

struct FindView : View {
    @ObservedObject var model : Model
    @Binding var selectedTab : String
    @ObservedObject var vm : ChatLogViewModel
    @State private var showSpinner:Bool = false
    var body: some View {
        if showSpinner {
            LoaderView()
        }
        else {
            if vm.currentView == "" {
                VStack(spacing: 0) {
                    HeaderView()
                    FindFieldView()
                        .padding(.top, 20)
                        .frame(width: 373, height: 35)
                    if let people = JsonParse(jsonString: jsonString) {
                        ScrollView {
                            VStack(spacing: 0) {
                                ForEach(people, id: \.self) {
                                    person in
                                    Button(action: {
                                        showSpinner = true
                                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
                                            showSpinner = false
                                        }
                                        vm.currentView = "FindView"
                                        vm.otherName = person.name
                                        vm.otherEmail = person.email
                                        vm.fetchAllMessages(otherEmail: person.email) { messages, error in
                                            if let error = error {
                                                print("Error fetching messages: \(error.localizedDescription)")
                                            } else if let messages = messages {
                                                vm.messages = messages
                                            }
                                        }
                                    }) {
                                        ZStack {
                                            Rectangle()
                                                .fill(Color.grayColor)
                                                .frame(width: 377, height: 75)
                                                .cornerRadius(10)
                                            HStack {
                                                VStack(alignment: .leading) {
                                                    Text(person.name)
                                                        .font(.custom("Inter-Regular", size: 16))
                                                        .foregroundColor(.black)
                                                    Text(person.email)
                                                        .font(.custom("Inter-Regular", size: 16))
                                                        .foregroundColor(.black)
                                                }
                                                Spacer()
                                                Image(systemName: "chart.bar.doc.horizontal")
                                                    .foregroundColor(.black)
                                            }
                                            .padding(.horizontal, 20)
                                        }
                                        .frame(width: 377, height: 75)
                                        .padding(.top, 15)
                                    }
                                }
                            }
                            .padding(.top, 20)

                        }
                    }
                    else {
                        Text("Список пуст :(")
                    }
                    Spacer()
                    TabView(image: "house", selectedTab: $selectedTab, vm: vm, showSpinner: $showSpinner)
                        .background(Color.greenColor)
                        .foregroundColor(.white)
                        .frame(height: 60)
                    
                }
                    .navigationBarBackButtonHidden(true)
            }
            else {
                ChatView(model: model, selectedTab: $selectedTab, vm: vm, showSpinner: $showSpinner)
            }
        }
    }
}

