//
//  RecipeModel.swift
//  recipe list app (iOS)
//
//  Created by Zoe Nelson on 5/9/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData() // We don't need to create an instance of DataService because it is 'static'
                                                  // Handy when you just need the method for utility and theres no need to have instances of it
        
        
    }
    
}




