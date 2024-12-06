//
//  PlayerDetailView.swift
//  CricketPlayers
//
//  Created by Aneesha on 16/09/23.
//

import SwiftUI

struct PlayerDetailView: View {
    
    //VARIABLES
    
    var player: Player
    
    //BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                //MARK: - Cover Image
                Image(player.gallery.randomElement() ?? "")
                    .resizable()
                    .scaledToFit()
                
                //MARK: - Player name
                Text(player.name.uppercased())
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                //MARK: - Player Info
                GroupBox() {
                    HStack {
                        Group {
                            Image(systemName: "person.fill")
                            Text("Role: ")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Spacer()
                            Text(player.role)
                                .font(.footnote)
                                
                        }//Group
                    }//HStack
                    
                    Divider()
                    
                    HStack {
                        Group {
                            Image(systemName: "calendar")
                            Text("Date of birth: ")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Spacer()
                            Text(player.dob)
                                .font(.footnote)
                                
                        }//Group
                    }//HStack
                }//GroupBox
                .padding(.horizontal)
                
                //MARK: - Image Slider (Gallery)
                Group {
                   HeaderView(iconName: "photo.on.rectangle", title: "Gallery")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(player.gallery, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 200)
                                .cornerRadius(10)
                            }//ForEach
                        }//HStack
                    }//ScrollView
                }//Group
                .padding(.horizontal)
                
                //MARK: - About
                Group {
                    HeaderView(iconName: "info.circle", title: "About \(player.name)")
                    Text(player.description)
                        .multilineTextAlignment(.leading)
                        .font(.body)
                        .layoutPriority(1)
                }//Group
                .padding(.horizontal)
                
                //MARK: - wikipedia link
                Group {
                    HeaderView(iconName: "link", title: "More Info")
                    GroupBox {
                        HStack {
                            Group {
                               Image(systemName: "globe")
                                Text("Read more")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                Spacer()
                                Image(systemName: "arrow.up.right.square")
                                    .foregroundColor(.accentColor)
                                Link("wikipedia", destination: URL.init(string: player.vikilink)!)
                                    .font(.footnote)
                                    .foregroundColor(.accentColor)
                            }//Group
                        }//Hstack
                    }//GroupBox
                }//Group
                .padding(.horizontal)
            }//VStack
            .navigationBarTitle("Player Details", displayMode: .inline)
        }//ScrollView
    }
}

//PREVIEW

struct PlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetailView(player: PlayersData[4])
    }
}
