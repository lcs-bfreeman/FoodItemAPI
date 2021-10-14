//
//  ViewModel.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-14.
//

import Foundation

// Define a view model that uses the service to retrieve data from the endpoint
protocol ViewModel: ObservableObject {

    // This function will return details of the current XKCD comic
    func getFood() async
    
}

@MainActor
final class ViewModelImplementation: ViewModel, ObservableObject {
    
    @Published private(set) var food: [Food] = []
    
    private let service: FoodService
    
    init(service: FoodService) {
        self.service = service
    }
    
    func getFood() async {
        do {
            
            let newFood = try await service.fetchFoods()
            
            food.append(newFood)
        } catch {
            print(error)
        }
    }
    
}
