//
//  Step.swift
//  fitnessApp
//
//  Created by Gabriel Lemache Castro on 08/04/22.
//

import SwiftUI

// Model

struct Step: Identifiable{
    var id = UUID().uuidString
    var value: CGFloat
    var key: String
    var color: Color = Color("Purple")
}

// Data Sample

var steps: [Step] = [
    Step(value: 500, key: "1-4 AM"),
    Step(value: 240, key: "5-8 AM", color: Color("Green")),
    Step(value: 350, key: "9-11 AM"),
    Step(value: 430, key: "12-4 PM", color: Color("Green")),
    Step(value: 690, key: "5-8 PM"),
    Step(value: 240, key: "9-12 PM", color: Color("Green"))
]
