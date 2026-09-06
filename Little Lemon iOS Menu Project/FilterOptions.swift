//
//  FilterOptions.swift
//  Little Lemon iOS Menu Project
//
//  Created by hicham fakir on 26/8/2026.
//

import Foundation

enum SelectedCategory: String, CaseIterable {
    case food = "Food"
    case drink = "Drink"
    case dessert = "Dessert"
}

enum SortBy: String, CaseIterable {
    case mostPopular = "Most Popular"
    case price = "Price $-$$$"
    case aZ = "A-Z"
}
