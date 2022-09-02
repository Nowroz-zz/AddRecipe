//
//  Ingredient.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import Foundation

struct Ingredient: Identifiable {
    let id: UUID
    var name: String
    var amount: Double
    var unit: String
}
