//
//  ContentView.swift
//  MMF
//
//  Created by Круглич Влад on 26.03.24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            LogInView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
