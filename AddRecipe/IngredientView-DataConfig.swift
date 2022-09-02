//
//  IngredientView-DataConfig.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import Foundation

extension IngredientView {
    struct DataConfig {
        let units = ["gm", "kg", "ml", "liter", "ounce", "pound", "piece", "cup", "tea-spoon", "table-spoon"]
        
        var name = ""
        var amount = 0.0
        var unit = "gm"
    }
}
