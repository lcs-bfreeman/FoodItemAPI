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
        
        AsyncImage(url: URL(string: foods.image)!, scale: 2.0)
            .frame(width: 1.0, height: 1.0)
            .scaledToFit()


    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(foods: Food.dummyData)
    }
}
