//
//  DetailView.swift
//  StateVariable
//
//  Created by Mickael Mas on 26/03/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var value: Double
    
    var body: some View {
        VStack {
            Text("Ma valeur : \(value)")
            Stepper("Quantité :", value: $value)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(value: .constant(0.0))
    }
}
