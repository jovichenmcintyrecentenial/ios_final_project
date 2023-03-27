//{{update here}}
//  AppBar.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI
struct AppBar: View {
    let title: String
    let backgroundColor: Color
    
    init(_ title: String, backgroundColor: Color = .clear) {
        self.title = title
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        HStack {
            Spacer()
            
            Title(title,fontSize: 24)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(backgroundColor)
    }
}
