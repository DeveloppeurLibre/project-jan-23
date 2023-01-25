//
//  ExempleViewB.swift
//  TestProject
//
//  Created by Quentin Cornu on 24/01/2023.
//

import SwiftUI

struct ExempleViewB: View {
    
    @State var isActive = false
    
    var body: some View {
        VStack {
            Text(isActive ? "Access granted" : "Access denied")
            ExempleViewA(isActive: $isActive)
            Button {
                isActive.toggle()
            } label: {
                Text("Change var in view B")
            }

        }
        
    }
}

struct ExempleViewB_Previews: PreviewProvider {
    static var previews: some View {
        ExempleViewB()
    }
}
