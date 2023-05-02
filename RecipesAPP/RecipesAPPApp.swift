//
//  RecipesAPPApp.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/11/23.
//

import SwiftUI

@main
struct RecipesAPPApp: App {
    // @StateObject indicates that it'll follow the life cycle of the app
    @StateObject var recipesVM = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(RecipesViewModel())
        }
    }
}
