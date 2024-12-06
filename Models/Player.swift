//
//  Player.swift
//  CricketPlayers
//
//  Created by Aneesha on 15/09/23.
//

import Foundation

//Player Model
struct Player: Identifiable {
    var id = UUID()
    var name: String
    var role: String
    var dob: String
    var image: String
    var description: String
    var gallery: [String]
    var vikilink: String
}
