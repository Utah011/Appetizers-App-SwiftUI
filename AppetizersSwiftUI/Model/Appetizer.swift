//
//  Appetizer.swift
//  AppetizersSwiftUI
//
//  Created by Andrew Kolbasov on 16.10.2021.
//

import Foundation

struct Appetizer: Decodable, Identifiable, Equatable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "Test description", price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let sampleOne = Appetizer(id: 0001,
                                           name: "Test One",
                                           description: "Test description", price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let sampleTwo = Appetizer(id: 0002,
                                           name: "Test Two",
                                           description: "Test description", price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let sampleThree = Appetizer(id: 0003,
                                           name: "Test Three",
                                           description: "Test description", price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static var orders = [sampleOne, sampleTwo, sampleThree]
}
