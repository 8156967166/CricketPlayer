//
//  HomeView.swift
//  CricketPlayers
//
//  Created by Aneesha on 15/09/23.
//

import SwiftUI
import CoreData

struct HomeView: View {
    
    //VARIABLES
    
    var players: [Player] = PlayersData
    
    //BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(players) { player in
                    //Navigation
                    NavigationLink(destination: PlayerDetailView(player: player)) {
                        //row
                         PlayersListView(player: player)
                    }
                }//loop
            }//list
            .navigationTitle("Players")
        }//navigation
        
    }
}

//PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
