//
//  Model.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-12.
//

import Foundation

struct Food: Decodable {
    let image: String
}

extension Food {
    
    static let dummyData: Food =
    
        Food(image: "https://foodish-api.herokuapp.com/images/samosa/samosa20.jpg")

    
    
}
