//
//  FlavourText.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-15.
//

import Foundation

struct FlavourText: Identifiable {
    let id = UUID()
    let flavours: Flavours
    
}


struct Flavours {
    let flavour: String
}
