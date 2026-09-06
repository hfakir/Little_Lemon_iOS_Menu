//
//  MenuViewModel.swift
//  Little Lemon iOS Menu Project
//
//  Created by hicham fakir on 26/8/2026.
//

import Foundation
import Combine

class MenuViewModel: ObservableObject {
    @Published var foodItems: [MenuItem] = []
    @Published var drinkItems: [MenuItem] = []
    @Published var dessertItems: [MenuItem] = []
    
    init() {
        generateMockData()
    }
    
    func generateMockData() {
        for i in 1...12 {
            foodItems.append(MenuItem(
                title: "Food \(i)",
                ingredients: [.spinach, .broccoli, .carrot, .pasta],
                price: 10.99,
                menuCategory: .food,
                ordersCount: 1000,
                priceInt: 11
            ))
        }
        
        for i in 1...8 {
            drinkItems.append(MenuItem(
                title: "Drink \(i)",
                ingredients: [],
                price: 3.99,
                menuCategory: .drink,
                ordersCount: 500,
                priceInt: 4
            ))
        }
        
        for i in 1...4 {
            dessertItems.append(MenuItem(
                title: "Dessert \(i)",
                ingredients: [],
                price: 6.99,
                menuCategory: .dessert,
                ordersCount: 300,
                priceInt: 7
            ))
        }
    }
}
