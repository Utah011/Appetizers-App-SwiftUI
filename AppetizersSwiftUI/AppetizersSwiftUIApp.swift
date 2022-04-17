//
//  AppetizersSwiftUIApp.swift
//  AppetizersSwiftUI
//
//  Created by Utah011 on 16.10.2021.
//

import SwiftUI

@main
struct AppetizersSwiftUIApp: App {
    
    var order = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
