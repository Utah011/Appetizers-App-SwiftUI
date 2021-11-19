//
//  EmptyOrderState.swift
//  AppetizersSwiftUI
//
//  Created by Andrew Kolbasov on 19.10.2021.
//

import SwiftUI

struct EmptyOrderState: View {
    
    var imageName: String
    var message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyOrderState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyOrderState(imageName: "empty-order", message: "Ok")
    }
}
