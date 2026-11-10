//
//  CategoryViewModel.swift
//  FoodCatelogue
//
//  Created by Rajesh Gunasekar on 10/11/26.
//

import SwiftUI

@Observable class CategoryViewModel {
    var categories: [Category] = []
    
    init() {
        categories = [
            Category(name: "Burgers", products: [
                Product(name: "Royal Red Robin", cost: 29.19),
                Product(name: "Madlove", cost: 19.23),
                Product(name: "Cheese Burger", cost: 24.89)
            ]),
            Category(name: "New Items", products: [
                Product(name: "Chesse Pizza", cost: 32.18)
            ])
        ]
    }
}
