//
//  Recipe.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import Foundation

struct Recipe: Identifiable {
    let id: UUID
    var title: String
    var ingredients: [Ingredient]
}
