//
//  ring.swift
//  fitnessApp
//
//  Created by Gabriel Lemache Castro on 06/04/22.
//

import SwiftUI

// Model

struct Ring: Identifiable{
    var id = UUID().uuidString
    var progress: CGFloat
    var value: String
    var keyIcon: String
    var keyColor: Color
    var isText: Bool = false
}

// Sample Data

var rings: [Ring] = [
    Ring(progress: 72, value: "Stpes", keyIcon: "figure.walk", keyColor: Color("Green")),
    Ring(progress: 36, value: "Calories", keyIcon: "flame.fill", keyColor: Color("Red")),
    Ring(progress: 91, value: "Sleeep Time", keyIcon: "😴", keyColor: Color("Purple"), isText: true)
]
