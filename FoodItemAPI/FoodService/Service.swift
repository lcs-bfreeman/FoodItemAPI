//
//  Service.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-14.
//

import Foundation

protocol FoodService {
    func fetchFoods() async throws -> Food
}

final class FoodServiceImplementation: FoodService {
    
    final func fetchFoods() async throws -> Food {
        
        let urlSession = URLSession.shared
        
        let url = URL(string: APIConstants.baseURL.appending("/images"))
        
        let (data, _) = try await urlSession.data(from: url!)
        
        return try JSONDecoder().decode(Food.self, from: data)
        
    }
    
}
