//
//  AddRecipeView.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var dataConfig = DataConfig()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    TextField("Enter a title", text: $dataConfig.title)
                    
                    Section {
                        ForEach(0..<dataConfig.numberOfIngredients, id:\.self) { number in
                            HStack {
                                Text("\(number + 1).")
                                    .bold()
                                
                                Divider()
                                    .padding()
                                
                                IngredientView()
                            }
                        }
                    } header: {
                        Stepper("Add Ingredients", value: $dataConfig.numberOfIngredients, in: 1...50)
                            .textCase(.none)
                            .font(.title3.bold())
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
