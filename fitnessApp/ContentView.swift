//
//  ContentView.swift
//  fitnessApp
//
//  Created by Gabriel Lemache Castro on 14/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Home()
        }
        .frame(maxWidth: .infinity)
        .background( Background())
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
