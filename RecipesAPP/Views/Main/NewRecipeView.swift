//
//  NewRecipeView.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/25/23.
//

import Foundation
import SwiftUI

struct NewRecipeView: View {
    
    // create state variable and hide add recipe sheet at first
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            // create button to add recipe
            Button("Add recipe manually") {
                // show add recipe sheet
                showAddRecipe = true
            }
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        // make this a sheet view
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
