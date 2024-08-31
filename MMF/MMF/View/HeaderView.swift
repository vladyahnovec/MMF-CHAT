//
//  HeaderView.swift
//  MMF
//
//  Created by Круглич Влад on 28.03.24.
//

import Foundation
import  SwiftUI

struct HeaderView : View {
    var body: some View {
        ZStack {
            HStack {
                Image("logo")
                    .resizable()
                    .frame(width: 127, height: 40)
                Spacer()
                Image(systemName: "bell.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
            }
            .padding(.horizontal, 10)
        }
        .frame(width: UIScreen.main.bounds.width, height: 60)
        .background(Color.greenColor)
    }
}
