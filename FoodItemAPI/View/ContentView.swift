//
//  ContentView.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-12.
//

import SwiftUI
struct ContentView: View {
    
    let foods: Food
    
    var body: some View {
        
        AsyncImage(url: URL(string: foods.image)!)
            .scaledToFit()
            .padding()

    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(foods: Food.dummyData)
    }
}
