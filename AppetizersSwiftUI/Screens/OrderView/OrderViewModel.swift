//
//  OrderViewModel.swift
//  AppetizersSwiftUI
//
//  Created by Andrew Kolbasov on 19.10.2021.
//

import Foundation

final class OrderViewModel: ObservableObject {
    
    @Published var orderItems: [Appetizer] = []
    
    var totalPrice: Double {
        orderItems.reduce(0) {
            $0 + $1.price
        }
    }
    
    func add(_ appetizer: Appetizer) {
        orderItems.append(appetizer)
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}
