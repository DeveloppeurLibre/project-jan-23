//
//  ListExample.swift
//  TestProject
//
//  Created by Quentin Cornu on 24/01/2023.
//

import SwiftUI

struct Car: Identifiable {
    var id = UUID()
    
    let model: String
    let color: Color
}

struct ListExample: View {
    
    let myGarage = [
        Car(model: "Clio", color: .gray),
        Car(model: "911 GT3", color: .blue),
        Car(model: "Model S", color: .red)
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(myGarage) { car in
                    HStack {
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(car.color)
                        Text(car.model)
                    }
                }
            }
        }
    }
}

struct ListExample_Previews: PreviewProvider {
    static var previews: some View {
        ListExample()
    }
}
