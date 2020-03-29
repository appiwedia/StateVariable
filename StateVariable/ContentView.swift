//
//  ContentView.swift
//  StateVariable
//
//  Created by Mickael Mas on 26/03/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value: Double = 0.5
    @State private var isPresented = false
    var body: some View {
        
        VStack {
            Text("Ma valeur : \(value)")
            Button(action: {
                self.isPresented = true
            }) {
                Text("Ajouter")
            }
            
            Slider(value: $value)
        }.sheet(isPresented: $isPresented, onDismiss: {
            print("Dismiss")
        }) {
            DetailView(value: self.$value)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
