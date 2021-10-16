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
    
    @ObservedObject var viewModel: TextViewModel
    
    @State var flavourText: String
    
    var body: some View {
        
        NavigationView{
            VStack(alignment: .center){
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
        Text("\(flavourText)")

    }
}

//struct FoodScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        FoodScreen(viewModel: viewModel, flavourText: flavourText)
//    }
//}
