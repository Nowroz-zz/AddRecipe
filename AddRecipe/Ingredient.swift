//
//  Ingredient.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import Foundation

struct Ingredient: Identifiable {
    let id = UUID()
    let number: Int
    var name = ""
    var amount = 0.0
    var unit = "gm"
    
    static let units = ["gm", "kg", "ml", "liter", "ounce", "pound", "piece", "cup", "tea-spoon", "table-spoon"]
}
