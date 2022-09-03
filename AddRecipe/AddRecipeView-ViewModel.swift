//
//  AddRecipeView-ViewModel.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 3/9/22.
//

import Foundation

extension AddRecipeView {
    @MainActor
    class ViewModel: ObservableObject {
        @Published var title = ""
        @Published var ingredients = [Ingredient(number: 1)]
        
        private var ingredientNumber = 1
        
        func addIngredient() {
            ingredientNumber += 1
            let ingredient = Ingredient(number: ingredientNumber)
            ingredients.append(ingredient)
        }
        
        func removeIngredient() {
            if ingredients.isEmpty == false {
                ingredientNumber -= 1
                ingredients.removeLast()
            }
        }
        
        func printRecipe(){
            print("Title: \(title)")
            
            for ingredient in ingredients {
                print("name: \(ingredient.name)")
                print("amount: \(ingredient.amount)\(ingredient.unit)")
            }
        }
    }
}
