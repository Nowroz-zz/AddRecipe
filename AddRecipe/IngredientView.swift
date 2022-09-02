//
//  IngredientView.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import SwiftUI

struct IngredientView: View {
    let units = ["gm", "kg"]
    
    var body: some View {
        VStack {
            TextField("name", text: .constant(""))
            
            Divider()
            
            HStack {
                TextField("amount", value: .constant(0.0), format: .number)
                
                Picker("unit", selection: .constant("gm")) {
                    ForEach(units, id:\.self) { unit in
                        Text(unit)
                    }
                }
                .labelsHidden()
            }
        }
        .padding()
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView()
    }
}
