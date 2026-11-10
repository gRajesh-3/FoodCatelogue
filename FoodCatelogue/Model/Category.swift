//
//  Category.swift
//  FoodCatelogue
//
//  Created by Rajesh Gunasekar on 10/11/26.
//

import Foundation

struct Category: Identifiable, Hashable {
    let id: String
    let name: String
    let products: [Product]
    
    static let demoCategory = Category(name: "Dummy", products: [Product.dummyProduct])
    
    init(id: String = UUID().uuidString, name: String, products: [Product]) {
        self.id = id
        self.name = name
        self.products = products
    }
    
    static func == (lhs: Category, rhs: Category) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
