//
//  LoaderView.swift
//  MMF
//
//  Created by Круглич Влад on 8.04.24.
//

import SwiftUI

struct LoaderView: View {
    @State private var showSpinner:Bool = false
    @State private var degree:Int = 270
    @State private var spinnerLength = 0.6
    var body: some View {
        Circle()
            .trim(from: 0.0,to: spinnerLength)
            .stroke(LinearGradient(colors: [.greenColor,.lightGreenColor], startPoint: .topLeading, endPoint: .bottomTrailing),style: StrokeStyle(lineWidth: 8.0,lineCap: .round,lineJoin:.round))
            .animation(Animation.easeIn(duration: 1.5).repeatForever(autoreverses: true))
            .frame(width: 40,height: 40)
            .rotationEffect(Angle(degrees: Double(degree)))
            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
            .onAppear{
                degree = 270 + 360
                spinnerLength = 0
            }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}
