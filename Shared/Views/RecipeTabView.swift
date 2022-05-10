//
//  RecipeTabView.swift
//  recipe list app (iOS)
//
//  Created by Zoe Nelson on 5/9/22.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            RecipeFeaturedView()
                .tabItem {
                    
                    VStack {
                        
                        Image(systemName: "star.fill")
                        Text("Featured")
                        
                    }
                    
                }
            
            RecipeListView()
                .tabItem {
                    
                    VStack {
                        
                        Image(systemName: "list.bullet")
                        Text("List")
                        
                    }
                    
                }
            
        }
        .environmentObject(RecipeModel())
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
