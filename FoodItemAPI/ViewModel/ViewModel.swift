//
//  ViewModel.swift
//  FoodItemAPI
//
//  Created by Ben Freeman on 2021-10-14.
//

import Foundation

protocol ViewModel: ObservableObject {

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


