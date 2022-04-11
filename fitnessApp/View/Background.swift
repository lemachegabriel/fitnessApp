//
//  Background.swift
//  fitnessApp
//
//  Created by Gabriel Lemache Castro on 11/04/22.
//

import SwiftUI

struct Background: View {
    var body: some View {
        ZStack{
            VStack{
                Circle()
                    .fill(Color(.green))
                    .scaleEffect(0.6)
                    .offset(x: 20)
                    .blur(radius: 120)
                Circle()
                    .fill(Color(.red))
                    .scaleEffect(0.6, anchor: .leading)
                    .offset(y: -20)
                    .blur(radius: 120)
            }
            Rectangle()
                .fill(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}
