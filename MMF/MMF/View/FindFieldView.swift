//
//  FindFieldView.swift
//  MMF
//
//  Created by Круглич Влад on 26.03.24.
//

import Foundation
import SwiftUI

struct FindFieldView : View {
    @State var find = ""
    var body: some View {
        VStack {
            ZStack {
                ZStack {
                    ZStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                            ZStack(alignment: .leading) {
                                if find.isEmpty {
                                    HStack {
                                        Text("Поиск")
                                            .font(.custom("Inter-Regular", size: 16))
                                            .foregroundColor(.white)
                                    }
                                }
                                TextField("", text: $find)
                                    .frame(width: 323, height: 35)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .frame(width: 373, height: 35)
                    .background(Color.greenColor)
                    .cornerRadius(10)
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: 50)
            .background(Color.lightGreenColor)
            Spacer()
        }
    }
}

struct FindFieldView_Previews: PreviewProvider {
    static var previews: some View {
        FindFieldView()
    }
}
