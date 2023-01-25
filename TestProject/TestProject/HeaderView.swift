//
//  HeaderView.swift
//  TestProject
//
//  Created by Quentin Cornu on 23/01/2023.
//

import SwiftUI

struct HeaderView: View {
    
    let userName: String
    let title: String
    let description: String
    let imageURL: URL?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    AsyncImage(url: imageURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                            .padding(4)
                    } placeholder: {
                        Rectangle()
                            .foregroundColor(.gray)
                            .clipShape(Circle())
                            .padding(4)
                    }

                        
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 3))
                        .foregroundColor(Color(white: 0.8))
                }
                .frame(width: 80, height: 80)
                
                Spacer()
                HStack(spacing: 24) {
                    VStack {
                        Text("134")
                            .font(.system(size: 20, weight: .semibold))
                        Text("Posts")
                    }
                    VStack {
                        Text("1294")
                            .font(.system(size: 20, weight: .semibold))
                        Text("Followers")
                    }
                    VStack {
                        Text("60")
                            .font(.system(size: 20, weight: .semibold))
                        Text("Followings")
                    }
                }
                Spacer()
            }
            Text(userName)
                .bold()
            Text(title)
                .foregroundColor(.gray)
            Text(description)
                .lineLimit(3)
            Text("liendemonsite.com")
                .foregroundColor(.blue)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(
                userName: "Nico",
                title: "Développeur",
                description: "Une petite description",
                imageURL: URL(string: "https://images.pexels.com/photos/14871529/pexels-photo-14871529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
            )
            HeaderView(
                userName: "Nidsfgsdfgsdco",
                title: "Engineer",
                description: "Lorem Ipsum est un générateur de faux textes aléatoires.\nVous choisissez le nombre de paragraphes, de mots ou de listes. Vous obtenez alors un texte aléatoire que vous pourrez ensuite utiliser librement dans vos maquettes.\nLe texte généré est du pseudo latin et peut donner l'impression d'être du vrai texte.",
                imageURL: URL(string: "https://images.pexels.com/photos/14871529/pexels-photo-14871529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
            )
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
