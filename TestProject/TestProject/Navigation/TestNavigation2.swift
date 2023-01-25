//
//  TestNavigation2.swift
//  TestProject
//
//  Created by Quentin Cornu on 25/01/2023.
//

import SwiftUI

struct TestNavigation2: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    
                    NavigationLink {
                        Text("Destination")
                    } label: {
                        Text("dmjfhvs")
                    }
                    Text("dmjfhvsdfvsd")
                    Text("sjdhfvqaze")
                }
            }
//            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Mes items")
        }
    }
}

struct TestNavigation2_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigation2()
    }
}
