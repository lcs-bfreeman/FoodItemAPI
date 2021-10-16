//
//  FlavourTextGenerator.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-15.
//

import Foundation

struct FlavourTextGenerator {
    
    static private let flavourTexts: [Flavours] = [
        Flavours(flavour: "Yummy!"),
        Flavours(flavour: "Looks Great!"),
        Flavours(flavour: "Only $9.99!"),
        Flavours(flavour: "Is anyone going to eat that?"),
        Flavours(flavour: "Wow!"),
        Flavours(flavour: "New!"),
        Flavours(flavour: "Buy one get one free!"),
        Flavours(flavour: "Sale!"),
    ]
    
    static func getText() -> FlavourText {
        let flavour = flavourTexts.randomElement()!
        let flavourText = FlavourText(flavours: flavour)
        
        return flavourText
    }

}


