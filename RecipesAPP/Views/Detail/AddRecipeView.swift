//
//  AddRecipeView.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/26/23.
//

import SwiftUI

struct AddRecipeView: View {
    
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    // create new private state variables (private because its only used in this view, Apple Recommended)
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var imageURL: String = ""
    @State private var navigateToRecipe = false

    // swift provides a handler to dismiss actions
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            // create a form to input values
            Form {
                Section(header: Text("Name")) {
                    // pass $name as text (binding argument is recognized by the $ in front)
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        // display each category
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                // save selected category
                                .tag(category)
                        }
                    }
                    // make picker style a menu (doesn't work for some reason??)
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    // text editor is like an input field in HTML
                    TextEditor(text: $description)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
                Section(header: Text("Directions")) {
                    TextField("Image URL", text: $imageURL)
                }
            }
            .toolbar(content: {
                // container for cancel button
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // close sheet
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            // only show icon
                            .labelStyle(.iconOnly)
                    }
                }
                // container for submit button
                ToolbarItem {
                    NavigationLink(isActive: $navigateToRecipe) { RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                // only show icon
                                .labelStyle(.iconOnly)
                        }
                    }
                    // disable submit button if name field is empty
                    .disabled(name.isEmpty)

                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        // change navigation view style to .stack to silence the constrain error
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "mm-dd-yyyy"
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        let recipe = Recipe(name: name, image: imageURL, description: description, ingredients: ingredients, directions: directions, category: selectedCategory.rawValue, datePublished: datePublished, url: "")
        
        recipesVM.addRecipe(recipe: recipe)
    }
}
