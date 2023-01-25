//
//  ExempleViewA.swift
//  TestProject
//
//  Created by Quentin Cornu on 24/01/2023.
//

import SwiftUI

struct ExempleViewA: View {
    
    @Binding var isActive: Bool
    
    var body: some View {
        Button {
            isActive.toggle()
        } label: {
            Rectangle()
                .frame(width: 200, height: 100)
                .foregroundColor(isActive ? .green : .red)
        }

    }
}

struct ExempleViewA_Previews: PreviewProvider {
    static var previews: some View {
        ExempleViewA(isActive: .constant(true))
    }
}
