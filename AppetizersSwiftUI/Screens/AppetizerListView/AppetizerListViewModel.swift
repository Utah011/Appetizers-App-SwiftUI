//
//  AppetizerListViewModel.swift
//  AppetizersSwiftUI
//
//  Created by Andrew Kolbasov on 18.10.2021.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    var currentAppetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetailView = false
    @Published var selectedAppetizer: Appetizer?
    
    var isBlur: CGFloat {
        isShowingDetailView ? 20 : 0
    }
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizer { [self] result in
            DispatchQueue.main.async {
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    print("equal \(currentAppetizers.elementsEqual(self.appetizers))")
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
