//
//  CategoryView.swift
//  FoodCatelogue
//
//  Created by Rajesh Gunasekar on 10/11/26.
//

import SwiftUI

struct CategoryView: View {
    @State var vm = CategoryViewModel()
    
    var body: some View {
        List(vm.categories) { category in
            NavigationLink(value: category) {
                Text(category.name)
            }
        }
        .navigationTitle("Categories")
        .navigationDestination(for: Category.self, destination: { category in
            ProductView(category: category)
        })
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .foregroundStyle(.blue)
                }

            }
        }
    }
}

#Preview {
    NavigationStack {
        CategoryView()
    }
}
