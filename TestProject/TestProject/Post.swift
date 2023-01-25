//
//  Post.swift
//  TestProject
//
//  Created by Quentin Cornu on 24/01/2023.
//

import Foundation
import SwiftUI

class Post: ObservableObject, Identifiable {
    
    let id = UUID()
    let postURL: URL?
    let userName: String
    let location: String
    let profilePictureURL: URL?
    @Published var isLiked: Bool
    @Published var isSaved: Bool
    
    init(postURL: URL? = nil, userName: String, location: String, profilePictureURL: URL? = nil) {
        self.postURL = postURL
        self.userName = userName
        self.location = location
        self.profilePictureURL = profilePictureURL
        self.isLiked = false
        self.isSaved = false
    }
}

