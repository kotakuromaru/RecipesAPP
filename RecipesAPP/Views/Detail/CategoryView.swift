//
//  CategoryView.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/26/23.
//

import SwiftUI

struct CategoryView: View {
    
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    // define variable category as a prop of type Category
    var category: Category
    
    // computed property
    var recipes: [Recipe] {
        // filter recipe list to items with category that matches the selected category... $0 refers to a wild card (I dont care nor want to name the item variable in the closure... allows for shorter coding like explicit return in JavaScript)
        return recipesVM.recipes.filter { $0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}
