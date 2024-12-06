//
//  HeaderView.swift
//  CricketPlayers
//
//  Created by Aneesha on 16/09/23.
//

import SwiftUI

struct HeaderView: View {
    
    //VARIABLES
    
    var iconName = ""
    var title = ""
    //BODY
    
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
        }//HStack
        .padding(.vertical)
    }
}

//PREVIEW

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
