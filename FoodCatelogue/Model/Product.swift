//
//  Product.swift
//  FoodCatelogue
//
//  Created by Rajesh Gunasekar on 10/11/26.
//

import Foundation

struct Product: Identifiable, Hashable {
    let id: String
    let name: String
    let cost: Double
    
    static let dummyProduct = Product(name: "Dummy", cost: 0.00)
    
    init(id: String = UUID().uuidString, name: String, cost: Double) {
        self.id = id
        self.name = name
        self.cost = cost
    }
    
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
