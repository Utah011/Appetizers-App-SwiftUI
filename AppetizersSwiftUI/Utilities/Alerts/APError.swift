//
//  APError.swift
//  AppetizersSwiftUI
//
//  Created by Andrew Kolbasov on 17.10.2021.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
