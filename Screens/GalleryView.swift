//  Gallery.swift
//  CricketPlayers
//  Created by Aneesha on 21/09/23.

import SwiftUI

struct GalleryView: View {
    //VARIABLES
    
    var players: [Player] = PlayersData
    @State var selectedIndex : Int = 0
    @State var selectedPlayer: Player = PlayersData[0]
    var gridLayout: [GridItem] = [GridItem.init(.flexible())]
    //BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    //TitleView
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 8) {
                            ForEach(players.indices) { index in
                                Image(players[index].image)
                                    .resizable()
                                    .scaledToFill()
                                    .background(Color.accentColor)
                                    .frame(width: 100, height: 100, alignment: .center)
                                    .cornerRadius(50)
                                    .overlay(Circle().stroke(Color.primary, lineWidth: selectedIndex == index ? 8 : 1))
                                    .clipShape(Circle())
                                    .animation(.easeIn)
                                    .onTapGesture {
                                        selectedIndex = index
                                        selectedPlayer = players[index]
                                    }
                            }//ForEach
                        }//HStack
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                    }//ScrollView
                    
                    //GridView
                    LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                        ForEach(selectedPlayer.gallery, id: \.self) { galleryImage in
                           Image(galleryImage)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(8)
                        }
                    }//LazyVGrid
                    .padding(.horizontal, 10)
                    .animation(.easeIn)
                }//VStack
                .padding(.vertical, 10)
                
            }//ScrollView
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitle("Gallery", displayMode: .inline)
        }//NavigationView
    }
}

//PREVIEW

struct Gallery_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
