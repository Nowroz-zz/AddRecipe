//
//  IngredientView.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import SwiftUI

struct IngredientView: View {
    @State private var dataConfig = DataConfig()
    
    var body: some View {
        VStack {
            TextField("name", text: $dataConfig.name)
            
            Divider()
            
            HStack {
                TextField("amount", value: $dataConfig.amount, format: .number)
                
                Picker("unit", selection: $dataConfig.unit) {
                    ForEach(dataConfig.units, id:\.self) { unit in
                        Text(unit)
                    }
                }
                .labelsHidden()
                .fixedSize()
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
