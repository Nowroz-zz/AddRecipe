//
//  DataController.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 3/9/22.
//

import CoreData
import Foundation

@MainActor
class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "AddRecipe")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load data: \(error.localizedDescription)")
            }
        }
    }
}
