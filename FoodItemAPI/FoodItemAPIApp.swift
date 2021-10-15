//
//  FoodItemAPIApp.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-12.
//

import SwiftUI

@main
struct FoodItemAPIApp: App {
    var body: some Scene {
        WindowGroup {
            FoodScreen()
                .scaledToFit()
                .padding()
                .background(Color.yellow)
                .navigationBarTitle("Daily Special")
        }
    }
}
