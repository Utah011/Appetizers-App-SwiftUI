//
//  OrderView.swift
//  AppetizersSwiftUI
//
//  Created by Utah011 on 16.10.2021.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("ok")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.orderItems.isEmpty {
                    EmptyOrderState(imageName: "empty-order", message: "The order is empty...")
                }
            }
            .navigationTitle("👛 Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
