//
//  RecipesViewModel.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/26/23.
//

import Foundation

import FirebaseCore
import FirebaseFirestore
import FirebaseDatabase

// Observable object is part of the combined framework that lets any object become a publisher. When added to a view, it notifies the view of its changes. In other words, the view is it's subscriber and is watching its changes to know if it should update its UI
class RecipesViewModel: ObservableObject {
    // use @Published to announce to its subscribers when the value has changed
    // private(set) prevents anything other than this class to update its value
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        // fetch data from database here
        
        
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        // append new recipe to array
        recipes.append(recipe)
    }
}
