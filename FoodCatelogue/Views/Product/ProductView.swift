//
//  ProductView.swift
//  FoodCatelogue
//
//  Created by Rajesh Gunasekar on 10/11/26.
//

import SwiftUI

struct ProductView: View {
    let category: Category

    var body: some View {
        List(category.products) { product in
            Text(product.name)
        }
        .navigationTitle(category.name)
    }
}

#Preview {
    NavigationStack {
        ProductView(category: Category.demoCategory)
    }
}
