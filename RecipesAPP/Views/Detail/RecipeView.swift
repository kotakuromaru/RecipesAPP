//
//  RecipeView.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/26/23.
//

import SwiftUI

struct RecipeView: View {
    
    // create an instance of the Recipe object
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            // pull image URL from recipe model
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    // this prevents image from setting text to go offscreen
                    .frame(maxWidth: UIScreen.main.bounds.width)
            // place holder for when image doesn't load
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
            }
            // set the height of the frame
            .frame(height: 300)
            // create a lienar gradient background
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            // create VStack for the text content
            VStack(spacing: 30) {
                // recipe title
                Text(recipe.name)
                    // title font, bold, center align
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                // create VStack for the description, ingredients, etc.
                VStack(alignment: .leading, spacing: 30) {
                    // check if field is empty first
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Ingredients")
                                .font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Directions")
                                .font(.headline)
                            Text(recipe.directions)
                        }
                    }
                }
                // set frame size of VStack
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            // apply some horizontal padding so its not touching sides
            .padding(.horizontal)
        }
        // get rid of white space at top of screen
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
