//
//  HomeView.swift
//  TestProject
//
//  Created by Quentin Cornu on 25/01/2023.
//

import SwiftUI

class PostData: ObservableObject {
    
    @Published var posts: [Post]
    
    init() {
        self.posts = [
            Post(
                postURL: URL(string: "https://images.pexels.com/photos/6681875/pexels-photo-6681875.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load"),
                userName: "Test user",
                location: "Test location",
                profilePictureURL: URL(string: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1600")
            ),
            
            Post(
                postURL: URL(string: "https://images.pexels.com/photos/6681875/pexels-photo-6681875.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load"),
                userName: "Test user 2",
                location: "Test location 2",
                profilePictureURL: URL(string: "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1600")
            )
        ]
    }
}

struct HomeView: View {
    
    @StateObject var data = PostData()

    var body: some View {
        ScrollView {
            VStack {
                ForEach(data.posts) { post in
                    PostView(post: post)
                }
                Button {
                    for post in data.posts {
                        if post.isLiked {
                            print(post.userName)
                        }
                    }
                } label: {
                    Text("Print les posts likés")
                }

            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
