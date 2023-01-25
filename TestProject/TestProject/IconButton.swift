//
//  IconButton.swift
//  TestProject
//
//  Created by Quentin Cornu on 24/01/2023.
//

import SwiftUI

struct IconButton: View {

    let symbol: String
    let activeColor: Color
    @Binding var isActive: Bool
        
    var body: some View {
        Button {
            isActive.toggle()
        } label: {
            Image(systemName: isActive ? "\(symbol).fill" : symbol)
                .font(.system(size: 30))
                .foregroundColor(isActive ? activeColor : .black)
        }
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 30) {
            IconButton(symbol: "heart", activeColor: .red, isActive: .constant(true))
            IconButton(symbol: "flag", activeColor: .blue, isActive: .constant(false))
        }
        
    }
}
