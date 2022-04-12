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
    Ring(progress: 72, value: "Stpes", keyIcon: "figure.walk", keyColor: Color(red: 0, green: 255/255, blue: 205/255)),
    Ring(progress: 36, value: "Calories", keyIcon: "flame.fill", keyColor: Color(red: 255/255, green: 0, blue: 68/255)),
    Ring(progress: 91, value: "Sleeep Time", keyIcon: "😴", keyColor: Color(red: 96/255, green: 12/255, blue: 220/255), isText: true)
]
