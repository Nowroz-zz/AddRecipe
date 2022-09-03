//
//  IngredientView.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import SwiftUI

struct IngredientView: View {
    @Binding var ingredient: Ingredient    
    
    var body: some View {
        HStack {
            Text("\(ingredient.number).")
                .bold()
                .padding(.trailing)
            
            Divider()
            
            VStack {
                TextField("name", text: $ingredient.name)
                
                Divider()
                
                HStack {
                    TextField("amount", value: $ingredient.amount, format: .number)
                    
                    Picker("unit", selection: $ingredient.unit) {
                        ForEach(Ingredient.units, id:\.self) { unit in
                            Text(unit)
                        }
                    }
                    .labelsHidden()
                }
            }
            .padding(.horizontal)
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView(ingredient: .constant(Ingredient(number: 1)))
    }
}
