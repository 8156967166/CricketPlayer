//
//  BaseView.swift
//  CricketPlayers
//
//  Created by Aneesha on 21/09/23.
//

import SwiftUI

struct BaseView: View {
    //VARIABLE
    
    //BODY
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Players")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo.on.rectangle.angled")
                    Text("Gallery")
                }
        }//TabView
    }
}

//PREVIEW

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
