//
//  Little_Lemon_iOS_Menu_ProjectTests.swift
//  Little Lemon iOS Menu ProjectTests
//
//  Created by hicham fakir on 26/8/2026.
//

import XCTest
@testable import Little_Lemon_iOS_Menu_Project

final class MenuItemTests: XCTestCase {

    func test_menuItem_title_initialization() {
        let item = MenuItem(
            title: "Food 5",
            ingredients: [.spinach, .broccoli],
            price: 10.99,
            menuCategory: .food,
            ordersCount: 1000,
            priceInt: 11
        )
        
        XCTAssertEqual(item.title, "Food 5")
    }

    func test_menuItem_ingredients_initialization() {
        let sampleIngredients: [Ingredient] = [.spinach, .broccoli, .carrot, .pasta]
        let item = MenuItem(
            title: "Food 5",
            ingredients: sampleIngredients,
            price: 10.99,
            menuCategory: .food,
            ordersCount: 1000,
            priceInt: 11
        )
        
        XCTAssertEqual(item.ingredients, sampleIngredients)
    }
}
