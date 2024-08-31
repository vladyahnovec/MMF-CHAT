//
//  ChatView.swift
//  MMF
//
//  Created by Круглич Влад on 26.03.24.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseFirestore
struct ChatView : View {
    @ObservedObject var model : Model
    @Binding var selectedTab : String
    static let emptyScroll = "emptyScroll"
    @ObservedObject var vm : ChatLogViewModel
    @Binding var showSpinner : Bool
    var body: some View {
        NavigationView() {
            VStack(spacing: 0) {
                if vm.currentView == "FindView"  {
                    HeaderView()
                }
                else {
                    HeaderView()
                }
                ZStack {
                    Rectangle()
                        .fill(Color.greenColor)
                        .frame(height: 50)
                    HStack {
                        HStack {
                            if vm.currentView == "FindView" {
                                NavigationLink(destination: FindView(model: model, selectedTab: $selectedTab, vm: vm)) {
                                    Image(systemName: "arrow.left")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25))
                                        .padding(.leading, 20)
                                }
                                .simultaneousGesture(TapGesture().onEnded {
                                    vm.currentView = ""
                                    vm.fetchLatestMessagesForUsers() { messages in
                                        vm.messages.sort { $0.timestamp < $1.timestamp }
                                        vm.messages = messages
                                        showSpinner = true
                                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
                                            showSpinner = false
                                        }
                                    }
                                })
                            }

                            else {
                                NavigationLink(destination: ChatsView(model: model, selectedTab: $selectedTab, showSpinner: $showSpinner, vm: vm)) {
                                    Image(systemName: "arrow.left")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25))
                                        .padding(.leading, 20)
                                }
                                .simultaneousGesture(TapGesture().onEnded {
                                    vm.currentView = ""
                                    vm.fetchLatestMessagesForUsers() { messages in
                                        vm.messages.sort { $0.timestamp < $1.timestamp }
                                        vm.messages = messages
                                        showSpinner = true
                                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
                                            showSpinner = false
                                        }
                                    }
                                })
                            }
                            
                            Spacer()
                            Text(vm.otherName)
                                .frame(width: 170)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .font(.custom("Inter-Medium", size: 18))
                        }
                        .frame(width: UIScreen.main.bounds.width - 120)
                        Spacer()
                        HStack{
                            Circle()
                                .fill(Color.white)
                                .frame(width: 35, height: 35)
                        }
                        .frame(width: 35)
                        .padding(.leading, 65)
                        .padding(.trailing, 20)
                    }
                }
                .padding(.top, 0)
                
                VStack() {
                    ScrollView {
                        ScrollViewReader { scrollViewReader in
                            VStack {
                                ForEach(vm.messages, id: \.self) { message in
                                    HStack {
                                        if message.fromId == vm.uid1 {
                                            Spacer()
                                            VStack(alignment: .trailing) {
                                                Text(message.text)
                                                    .font(.custom("Inter-Medium", size: 24))
                                                    .foregroundColor(.white)
                                                HStack {
                                                    Text(vm.formatTimestamp(message.timestamp))
                                                        .foregroundColor(.white)
                                                        .font(.custom("Inter-Light", size: 14))
                                                        .padding(.top, 1)
                                                }
                                            }
                                            .padding(20)
                                            .background(Color.lightGreenColor)
                                            .cornerRadius(20)
                                            .padding(.trailing, 10)
                                        } else {
                                            VStack(alignment: .leading) {
                                                Text(message.text)
                                                    .font(.custom("Inter-Medium", size: 24))
                                                HStack {
                                                    Text(vm.formatTimestamp(message.timestamp))
                                                        .font(.custom("Inter-Light", size: 14))
                                                        .padding(.top, 1)
                                                }
                                            }
                                            .padding(20)
                                            .background(Color.grayColor)
                                            .cornerRadius(20)
                                            .padding(.leading, 10)
                                            Spacer()
                                        }
                                    }
                                }
                                HStack {
                                    Spacer()
                                }
                                .id(Self.emptyScroll)
                            }
                            .onReceive(vm.$count) { _ in
                                withAnimation(.easeOut(duration: 0.5)) {
                                    scrollViewReader.scrollTo(Self.emptyScroll, anchor: .bottom)
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(width: UIScreen.main.bounds.width)
                }
                .frame(width: UIScreen.main.bounds.width)
                Spacer()
                HStack {
                    Image("elementequal")
                    ZStack(alignment: .leading) {
                        HStack {
                            ZStack(alignment: .leading) {
                                if vm.message.isEmpty {
                                    Text("Сообщение")
                                        .foregroundColor(.white)
                                        .font(.custom("Inter-Regular", size: 20))
                                }
                                TextField("", text: $vm.message)
                                    .frame(width: 257, height: 35)
                                    .foregroundColor(.white)
                                    .foregroundColor(Color.gray)
                                    .font(.custom("Inter-Regular", size: 20))
                            }
                            
                        }
                    }
                    .frame(width: 296, height: 35)
                    .background(Color.greenColor)
                    .cornerRadius(10)
                    Button(action: {
                        vm.handleSend(otherEmail: vm.otherEmail)
                        vm.fetchAllMessages(otherEmail: vm.otherEmail) { messages, error in
                            if let error = error {
                                print("Error fetching messages: \(error.localizedDescription)")
                            } else if let messages = messages {
                                vm.messages = messages
                                print(vm.messages)
                            }
                        }
                    }) {
                        Image("send")
                    }
                }
                .frame(width: UIScreen.main.bounds.width ,height: 70)
                .background(Color.lightGreenColor)
                .padding(.top, 30)
            }
           // .padding(.top, -80)
        }
        .navigationBarBackButtonHidden(true)
    }
}

