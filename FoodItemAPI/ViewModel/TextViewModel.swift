//
//  FoodTextViewModel.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-16.
//

import Foundation

class TextViewModel: ObservableObject {
    
    @Published var history: [FlavourText] = []

    init() {
        for _ in 1...3 {
            _ = self.getFlavourText()
        }
    }
    
    func getFlavourText()  -> FlavourText {
        let flavour = FlavourTextGenerator.getText()
        history.append(flavour)
        return flavour
    }
    
}
