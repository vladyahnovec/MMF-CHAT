//
//  MainView.swift
//  MMF
//
//  Created by Круглич Влад on 26.03.24.
//

import Foundation
import SwiftUI


struct MainView : View {
    @ObservedObject var model : Model
    @State var selectedTab = "house"
    @ObservedObject var vm = ChatLogViewModel()
    @State private var showSpinner:Bool = false
    @State private var nameCourseWork = ""
    @State private var findNameCourseWork = ""
    @State private var teacher = ""
    @State private var whoMake = ""
    @State private var one = false
    @State private var two = false
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                if showSpinner {
                    LoaderView()
                }
                else {
                    if (selectedTab == "house") {
                        HeaderView()
                        DisclosureGroup("Список курсовых работ", isExpanded: $two) {}
                            .foregroundColor(Color.lightGreenColor)
                            .padding()
                            .font(.custom("Inter-Medium", size: 18))
                        if two {
                            HStack {
                                TextField("Поиск", text: $findNameCourseWork)
                                    .frame(width: 300, height: 40)
                                Button(action: {
                                    model.findCourseWork(findNameCourseWork: findNameCourseWork)
                                }) {
                                    Image(systemName: "magnifyingglass")
                                }
                            }
                            List {
                                ForEach(model.courseWorksFind.count == 0 ? model.courseWorks : model.courseWorksFind, id: \.self) {
                                    work in
                                    VStack(alignment: .leading) {
                                        HStack {
                                            Text(work.name)
                                                .font(.custom("Inter-Medium", size: 18))
                                            if work.whoMake != nil && work.whoMake != "" {
                                                Image(systemName: "checkmark")
                                            }
                                        }
                                        HStack {
                                            HStack {
                                                Text(work.teacher)
                                                    .font(.custom("Inter-Light", size: 14))
                                            }
                                            Spacer()
                                            HStack {
                                                Text(work.whoMake ?? "")
                                                    .font(.custom("Inter-Light", size: 14))
                                                if (model.user["surname"] as! String) == work.teacher {
                                                    Image(systemName: "trash")
                                                        .foregroundColor(.red)
                                                }
                                            }
                                        }
                                        .padding(.top, 5)
                                    }
                                    .foregroundStyle(work.whoMake == nil || work.whoMake == ""  ? Color.black : Color.greenColor)
                                }
                            }
                        }
                        DisclosureGroup("Добавить курсовую работу", isExpanded: $one) {}
                            .foregroundColor(Color.lightGreenColor)
                            .padding()
                            .font(.custom("Inter-Medium", size: 18))
                        if one {
                            List {
                                TextField("Название курсовой работы", text: $nameCourseWork)
                                TextField("Фамилия студента", text: $whoMake)
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        model.addCourseWork(name: nameCourseWork, teacher: model.user["surname"] as! String, whoMake: whoMake)
                                        nameCourseWork = ""
                                        teacher = ""
                                        whoMake = ""
                                        print(model.user["surname"] as! String)
                                    }) {
                                        Text("Добавить")
                                            .frame(width: 200, height: 40)
                                            .background(Color.greenColor)
                                            .foregroundColor(Color.white)
                                            .cornerRadius(10)
                                    }
                                    .padding(.top, 20)
                                    Spacer()
                                }
                            }
                        }
                        Spacer()
                            TabView(image: "house", selectedTab: $selectedTab, vm: vm, showSpinner: $showSpinner)
                            .background(Color.greenColor)
                            .foregroundColor(.white)
                            .frame(height: 60)
                    }
                    else if (selectedTab == "magnifyingglass") {
                        FindView(model: model, selectedTab: $selectedTab, vm: vm)
                    }
                    else if (selectedTab == "chart.bar.doc.horizontal") {
                        ChatsView(model: model, selectedTab: $selectedTab, showSpinner: $showSpinner, vm: vm)
                    }
                    else {
                        AccountView(model: model, selectedTab: $selectedTab, showSpinner: $showSpinner, vm: vm)
                    }
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct TabView : View {
    let image : String
    @Binding var selectedTab : String
    @ObservedObject var vm : ChatLogViewModel
    @Binding var showSpinner : Bool
    var body: some View {
        GeometryReader {
            button in
            HStack {
                Button(action: {
                    selectedTab = "house"
                }) {
                    VStack {
                        Image(systemName: "house")
                            .font(.system(size: 25))
                            .foregroundColor(selectedTab == "house" ? Color.goldColor : Color.white)
                        Text("Главная")
                            .font(.custom("Inter-Regular", size: 10))
                            .foregroundColor(selectedTab == "house" ? Color.goldColor : Color.gray)
                            .padding(.top, 3)
                    }
                    .padding(.leading, 20)
                }
                Spacer()
                Button(action: {
                    selectedTab = "magnifyingglass"
                }) {
                    VStack {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 25))
                            .foregroundColor(selectedTab == "magnifyingglass" ? Color.goldColor : Color.white)
                        Text("Поиск")
                            .font(.custom("Inter-Regular", size: 10))
                            .foregroundColor(selectedTab == "magnifyingglass" ? Color.goldColor : Color.gray)
                            .padding(.top, 3)
                    }
                }
                Spacer()
                Button(action: {
                    showSpinner = true
                    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { timer in
                        showSpinner = false
                        selectedTab = "chart.bar.doc.horizontal"
                    }
                    vm.fetchLatestMessagesForUsers() { messages in
                        vm.messages = messages
                        vm.messages.sort { $0.timestamp < $1.timestamp }
                        
                    }
                    
                }) {
                    VStack {
                        Image(systemName: "chart.bar.doc.horizontal")
                            .font(.system(size: 25))
                            .foregroundColor(selectedTab == "chart.bar.doc.horizontal" ? Color.goldColor : Color.white)
                        Text("Чат")
                            .font(.custom("Inter-Regular", size: 10))
                            .foregroundColor(selectedTab == "chart.bar.doc.horizontal" ? Color.goldColor : Color.gray)
                            .padding(.top, 3)
                    }
                }
                Spacer()
                Button(action: {
                    selectedTab = "person"
                }) {
                    VStack {
                        Image(systemName: "person")
                            .font(.system(size: 25))
                            .foregroundColor(selectedTab == "person" ? Color.goldColor : Color.white)
                        Text("Аккаунт")
                            .font(.custom("Inter-Regular", size: 10))
                            .foregroundColor(selectedTab == "person" ? Color.goldColor : Color.gray)
                            .padding(.top, 3)
                    }
                    .padding(.trailing, 20)
                }
            }
            .padding(.top, 18)
        }
    }
}

