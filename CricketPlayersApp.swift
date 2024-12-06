//
//  CricketPlayersApp.swift
//  CricketPlayers
//
//  Created by Aneesha on 15/09/23.
//

import SwiftUI

@main
struct CricketPlayersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            BaseView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
