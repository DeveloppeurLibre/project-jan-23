//
//  TestNavigation.swift
//  TestProject
//
//  Created by Quentin Cornu on 25/01/2023.
//

import SwiftUI

struct TestNavigation: View {
    
    @State var isShowingModal = false
    
    var body: some View {
        Button {
            isShowingModal = true
        } label: {
            Text("Show modal")
        }
        .sheet(isPresented: $isShowingModal) {
            Text("djkfhv")
        }
    }
}

struct TestNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigation()
    }
}
