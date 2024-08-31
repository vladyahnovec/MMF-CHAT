//
//  InputLogInView.swift
//  MMF
//
//  Created by Круглич Влад on 27.03.24.
//

import Foundation
import SwiftUI

struct InputLogInView : View {
    var imageName : String
    var text : String
    @Binding var bindingN : String
    var body: some View {
        ZStack {
            ZStack(alignment: .leading) {
                HStack {
                    Image(systemName: imageName)
                        .font(.system(size: 30))
                    ZStack(alignment: .leading) {
                        if bindingN.isEmpty {
                            Text(text)
                                .foregroundColor(Color.black.opacity(0.68))
                                .font(.custom("Inter-Regular", size: 20))
                        }
                        TextField("", text: $bindingN)
                            .frame(width: 227, height: 50)
                            .foregroundColor(.black)
                            .foregroundColor(Color.black.opacity(0.68))
                            .font(.custom("Inter-Regular", size: 20))
                    }
                }
            }
            .frame(width: 277, height: 50)
            .background(Color.grayColor)
            .cornerRadius(10)
        }
        .padding(.top, 16)
        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
    }
}
