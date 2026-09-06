//
//  MenuItemProtocol.swift
//  Little Lemon iOS Menu Project
//
//  Created by hicham fakir on 26/8/2026.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var priceInt: Int { get set }
    var ingredients: [Ingredient] { get set }
}
