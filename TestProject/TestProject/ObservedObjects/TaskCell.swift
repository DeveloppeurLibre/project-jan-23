//
//  TaskCell.swift
//  TestProject
//
//  Created by Quentin Cornu on 25/01/2023.
//

import SwiftUI

struct TaskCell: View {
    
    @ObservedObject var task: Task

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(task.name)
                    .bold()
                Text(task.desctiption)
            }
            Spacer()
            IconButton(symbol: "heart", activeColor: .green, isActive: $task.isDone)
        }
        .padding()
    }
}

struct TastView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: Task.previewTask)
    }
}
