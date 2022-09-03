//
//  AddRecipeView.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import SwiftUI

struct AddRecipeView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Enter a title", text: $viewModel.title)
                    
                    Section {
                        ForEach($viewModel.ingredients) { $ingredient in
                            IngredientView(ingredient: $ingredient)
                        }
                    } header: {
                        Stepper("Add Ingredients") {
                            viewModel.addIngredient()
                        } onDecrement: {
                            viewModel.removeIngredient()
                        }
                        .textCase(.none)
                        .font(.headline)
                    }
                }
            }
            .navigationTitle("Add Recipe")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        viewModel.save(managedObjectContext: moc)
                        dismiss()
                    }
                }
            }
        }
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
