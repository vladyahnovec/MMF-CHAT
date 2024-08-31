//
//  ChatsView.swift
//  MMF
//
//  Created by Круглич Влад on 26.03.24.
//

import Foundation
import SwiftUI

struct ChatsView : View {
    @ObservedObject var model : Model
    @Binding var selectedTab : String
    @Binding var showSpinner : Bool
    @ObservedObject var vm : ChatLogViewModel
    var body: some View {
        if showSpinner {
            LoaderView()
            Text("123")
        }
        else {
            if vm.currentView == "" || vm.currentView == "FindView"  {
                VStack(spacing: 0) {
                    HeaderView()
                    ScrollView {
                        VStack {
                            ForEach(vm.messages, id: \.self) {
                                message in
                                    Button(
                                        action: {
                                            print(vm.currentView)
                                            vm.currentView = "ChatView"
                                            self.showSpinner = true
                                            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
                                                self.showSpinner = false
                                            }
                                            print(vm.currentView)
                                            vm.findEmailByName(name: message.toName) { email in
                                                vm.otherEmail = message.toEmail
                                                vm.otherName = message.toName
                                                vm.fetchAllMessages(otherEmail: message.toEmail) { messages, error in
                                                    if let error = error {
                                                        print("Error fetching messages: \(error.localizedDescription)")
                                                    } else if let messages = messages {
                                                        vm.messages = messages
                                                    }
                                                }
                                            }
                                        }
                                    ) {
                                        HStack {
                                            Circle()
                                                .fill(Color.green)
                                                .frame(width: 47, height: 47)
                                                .padding(.leading, 6)
                                            VStack(alignment: .leading) {
                                                Text(message.toName)
                                                    .foregroundColor(.black)
                                                    .font(.custom("Inter-SemiBold", size: 18))
                                                HStack {
                                                    Text(message.text)
                                                        .foregroundColor(.black)
                                                        .font(.custom("Inter-Regular", size: 16))
                                                        .lineLimit(1)
                                                    Spacer()
                                                    Text(vm.formatTimestamp(message.timestamp))
                                                        .foregroundColor(.black)
                                                        .font(.custom("Inter-Regular", size: 12))
                                                }
                                            }
                                            Spacer()
                                        }
                                    }
                            }
                        }
                    }
                    .padding(.top, 10)
                    Spacer()
                    TabView(image: "house", selectedTab: $selectedTab, vm: vm, showSpinner: $showSpinner )
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


