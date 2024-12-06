//
//  PlayersListView.swift
//  CricketPlayers
//
//  Created by Aneesha on 15/09/23.
//

import SwiftUI

struct PlayersListView: View {
    
    //VARIABLES
    
    var player: Player
    
    //BODY
    
    var body: some View {
        HStack {
            Image(player.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black, radius: 3, x: 3, y: 3)
                .background(Color.accentColor)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 8) {
                Text(player.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(player.role)
                    .font(.body)
                    .foregroundColor(.secondary)
            }//VStack
           
        }//HStack
    }
}

//PREVIEW

struct PlayersListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayersListView(player: PlayersData[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
