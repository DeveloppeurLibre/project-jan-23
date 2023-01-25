//
//  ProductivityCell.swift
//  TestProject
//
//  Created by Quentin Cornu on 24/01/2023.
//

import SwiftUI

// Dans un autre fichier CellConfig.swift

struct CellConfig {
    let text: String
    let icon: String
    let color: Color
}


struct ProductivityCell: View {
    
    let config: CellConfig
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 220)
                .foregroundColor(config.color)
                .cornerRadius(20)
            VStack {
                Image(systemName: config.icon)
                Text(config.text)
            }
            
        }
    }
}

struct ProductivityCell_Previews: PreviewProvider {
    
    static let previewCellConfig = CellConfig(
        text: "Preview text",
        icon: "house",
        color: .purple.opacity(0.5)
    )
    
    static var previews: some View {
        ProductivityCell(config: previewCellConfig)
    }
}
