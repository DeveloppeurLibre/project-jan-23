//
//  Task.swift
//  TestProject
//
//  Created by Quentin Cornu on 25/01/2023.
//

import Foundation

// Ajouter le protocole "ObservableObject"
// (si besoin) Transformer la struct en classe
// (si besoin) Ajouter un constructeur
// Ajouter le "@Published" aux propriétés qui changent

class Task: ObservableObject {
    let name: String
    let desctiption: String
    @Published var isDone: Bool
    
    init(name: String, desctiption: String, isDone: Bool) {
        self.name = name
        self.desctiption = desctiption
        self.isDone = isDone
    }
}

extension Task {
    
    static let previewTask = Task(
        name: "Preview task",
        desctiption: "This is a task for the preview",
        isDone: false
    )
}
