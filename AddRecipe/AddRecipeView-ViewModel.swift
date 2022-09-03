//
//  AddRecipeView-ViewModel.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 3/9/22.
//

import CoreData
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
        
        func save(managedObjectContext moc: NSManagedObjectContext){
            let cachedRecipe = CachedRecipe(context: moc)
            cachedRecipe.id = UUID()
            cachedRecipe.title = title
            
            for ingredient in ingredients {
                let cachedIngredient = CachedIngredient(context: moc)
                cachedIngredient.id = ingredient.id
                cachedIngredient.name = ingredient.name
                cachedIngredient.amount = ingredient.amount
                cachedIngredient.unit = ingredient.unit
                cachedIngredient.ingredientOf = cachedRecipe
            }
            
//            if moc.hasChanges {
//                do {
//                    try moc.save()
//                } catch {
//                    print("Core Data failed to save data.")
//                }
//            }
        }
    }
}
