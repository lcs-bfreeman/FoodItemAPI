//
//  FoodScreen.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-14.
//

import SwiftUI

struct FoodScreen: View {
    
    @StateObject private var vm = ViewModelImplementation(
        service: FoodServiceImplementation()
    )

    var body: some View {
        VStack(alignment: .center) {
            if vm.food.isEmpty {
                ProgressView()
            } else {

                ContentView(foods: vm.food.last!)
            }
        }
        .padding()
        .task {

            await vm.getFood()
        }
    }
    
}

struct FoodScreen_Previews: PreviewProvider {
    static var previews: some View {
        FoodScreen()
    }
}
