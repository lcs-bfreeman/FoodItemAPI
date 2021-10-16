//
//  FoodItemAPIApp.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-12.
//

import SwiftUI

@main
struct FoodItemAPIApp: App {
    
    @StateObject private var viewModel = TextViewModel()
    
    var body: some Scene {
        WindowGroup {
            FoodScreen(viewModel: viewModel, flavourText: viewModel.history.last!.flavours.flavour)
            }
        }
    }

