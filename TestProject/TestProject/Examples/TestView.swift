//
//  TestView.swift
//  TestProject
//
//  Created by Quentin Cornu on 25/01/2023.
//

import SwiftUI

struct TestView: View {
    
    @State var toggleIsOn = false
    @State var textFieldContent = ""
    @State var color: Color = .red
    @State var value: Int = 5
    
    var body: some View {
        VStack(spacing: 30) {
            Toggle("Test", isOn: $toggleIsOn)
            TextField("Your email...", text: $textFieldContent)
                .textFieldStyle(.roundedBorder)
            
            if toggleIsOn {
                ColorPicker(selection: $color) {
                    Text("Sélectionnez la couleur : ")
                        .foregroundColor(color)
                }
                
                Stepper("Test \(value)", value: $value)
            }
            
        }
        .padding()
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
