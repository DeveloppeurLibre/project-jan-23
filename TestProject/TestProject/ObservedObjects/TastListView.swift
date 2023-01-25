//
//  TastListView.swift
//  TestProject
//
//  Created by Quentin Cornu on 25/01/2023.
//

import SwiftUI

struct TastListView: View {
    
    @StateObject var task1 = Task(name: "Test Task", desctiption: "Une description", isDone: false)
    @StateObject var task2 = Task(name: "Test Task 2", desctiption: "Une autre description", isDone: false)
    
    var body: some View {
        VStack {
            TaskCell(task: task1)
            TaskCell(task: task2)
        }
        
    }
}

struct TastListView_Previews: PreviewProvider {
    static var previews: some View {
        TastListView()
    }
}
