//
//  RecipeFeaturedView.swift
//  recipe list app (iOS)
//
//  Created by Zoe Nelson on 5/9/22.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text("Featured Recipes")
                .bold()
                .padding(.top, 40)
                .padding(.leading)
                .font(.largeTitle)
            
            GeometryReader { geo in
                
                TabView {
                    
                    // Loop through each recipe
                    ForEach (0..<model.recipes.count, id: \.self) { index in
                        
                        // Only show those that should be featured
                        if model.recipes[index].featured {
                            
                            // Recipe card
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(.white)
                                
                                VStack(spacing: 0) {
                                    
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    Text(model.recipes[index].name)
                                        .padding(5)
                                    
                                }
                                
                            }
                            .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                                .cornerRadius(15)
                            .shadow(color: .black, radius: 10, x: -5, y: 5)                    }
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Preparation Time")
                    .font(.headline)
                Text("1 Hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Easy")
                
            }
            .padding(.leading)
            
        }
    }
    
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
