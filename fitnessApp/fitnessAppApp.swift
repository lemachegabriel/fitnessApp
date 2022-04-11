//
//  fitnessAppApp.swift
//  fitnessApp
//
//  Created by Gabriel Lemache Castro on 14/03/22.
//

import SwiftUI

@main
struct fitnessAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: DateViewModel())
        }
    }
}
