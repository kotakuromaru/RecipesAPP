//
//  CategoriesView.swift
//  RecipesAPP
//
//  Created by MX PROD on 4/25/23.
//

import Foundation
import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                // use CaseIterable and Identifiable in Recipe Model Category enum to make allCases possible and to conform to Identifiable
                ForEach(Category.allCases) { category in
                    // create a link to the recipes list
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
            }
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
