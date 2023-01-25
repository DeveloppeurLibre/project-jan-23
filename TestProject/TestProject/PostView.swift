//
//  PostView.swift
//  TestProject
//
//  Created by Quentin Cornu on 24/01/2023.
//

import SwiftUI

struct PostView: View {
    
    @ObservedObject var post: Post
    
    var body: some View {
        VStack {
            
            // Header
            HStack {
                AsyncImage(url: post.profilePictureURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(post.userName)
                        .bold()
                    Text(post.location)
                }
            }
//            .padding(.leading)
//            .padding(.trailing)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Imagez du post
            AsyncImage(url: post.postURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
            } placeholder: {
                Color.gray
            }
            .frame(height: UIScreen.main.bounds.width)
            .clipped()
            
            HStack {
                IconButton(symbol: "heart", activeColor: .red, isActive: $post.isLiked)
                IconButton(symbol: "flag", activeColor: .black, isActive: $post.isSaved)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    
    static let previewPost = Post(
        postURL: URL(string: "https://images.pexels.com/photos/6681875/pexels-photo-6681875.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load"),
        userName: "Preview user",
        location: "Preview location",
        profilePictureURL: URL(string: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1600")
    )
    
    static var previews: some View {
        PostView(post: previewPost)
    }
}
