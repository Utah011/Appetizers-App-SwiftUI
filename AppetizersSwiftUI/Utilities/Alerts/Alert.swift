//
//  Alert.swift
//  AppetizersSwiftUI
//
//  Created by Utah011 on 18.10.2021.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message: Text("SomeWthing is wrong with invalidData"),
                                              dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                              message: Text("SomeWthing is wrong with invalidResponse"),
                                              dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                              message: Text("SomeWthing is wrong with invalidURL"),
                                              dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("SomeWthing is wrong with unableToComplete"),
                                              dismissButton: .default(Text("OK")))
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("SomeWthing is empty"),
                                              dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Email is not correct"),
                                              dismissButton: .default(Text("OK")))
    static let userSaveSuccess = AlertItem(title: Text("User is saved"),
                                              message: Text("Done"),
                                              dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(title: Text("Invalid User Data"),
                                              message: Text("Something is wrong"),
                                              dismissButton: .default(Text("OK")))
}
