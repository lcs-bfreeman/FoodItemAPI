//
//  FoodScreen.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-14.
//

import SwiftUI

struct FoodScreen: View {
    
    @StateObject private var foodVM = ViewModelImplementation(
        service: FoodServiceImplementation()
    )
var fod = false
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .center){
                
        VStack (alignment: .center) {
            if foodVM.food.isEmpty {
                ProgressView()
            } else {

                ContentView(foods: foodVM.food.last!)
                    .scaledToFit()
                    .padding()
            }
                
        }
        .padding()
        .task {

            await foodVM.getFood()
        }
        }
        }
       
    }
}

struct FoodScreen_Previews: PreviewProvider {
    static var previews: some View {
        FoodScreen()
    }
}
