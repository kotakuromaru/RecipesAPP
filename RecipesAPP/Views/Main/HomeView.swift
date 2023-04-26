//
//  HomeView.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/25/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    // @EnvironmentObject suggests that the observable object was supplied by the parent view
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
