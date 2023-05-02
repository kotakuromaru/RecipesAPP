//
//  ContentView.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
