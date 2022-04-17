//
//  User.swift
//  AppetizersSwiftUI
//
//  Created by Utah011 on 19.10.2021.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var secondName: String = ""
    var email: String = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
