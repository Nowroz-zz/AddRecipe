//
//  AddRecipeView.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var numberOfIngredients = 1
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Enter a title", text: .constant(""))
                    
                    Section {
                        ForEach(0..<numberOfIngredients, id:\.self) { number in
                            HStack {
                                Text("\(number + 1).")
                                    .font(.title2)
                                
                                Divider()
                                    .padding()
                                
                                IngredientView()
                            }
                        }
                    } header: {
                        Stepper("Add Ingredients", value: $numberOfIngredients, in: 1...50)
                            .textCase(.none)
                            .font(.title3)
                            .padding(.bottom)
                    }
                }
            }
            .navigationTitle("Add Recipe")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") { }
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
