//
//  APButton.swift
//  AppetizersSwiftUI
//
//  Created by Utah011 on 19.10.2021.
//

import SwiftUI

struct APButton: View {
    
    var title: LocalizedStringKey
        
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}
