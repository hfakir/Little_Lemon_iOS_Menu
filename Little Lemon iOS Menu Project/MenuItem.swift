//
//  MenuItem.swift
//  Little Lemon iOS Menu Project
//
//  Created by hicham fakir on 26/8/2026.
//

import Foundation

struct MenuItem: Identifiable, MenuItemProtocol {
    let id = UUID()
    let title: String
    var ingredients: [Ingredient]
    var price: Double
    var menuCategory: MenuCategory
    var ordersCount: Int
    var priceInt: Int
}
