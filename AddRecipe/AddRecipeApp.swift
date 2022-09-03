//
//  AddRecipeApp.swift
//  AddRecipe
//
//  Created by Nowroz Islam on 2/9/22.
//

import SwiftUI

@main
struct AddRecipeApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContextg)
        }
    }
}
