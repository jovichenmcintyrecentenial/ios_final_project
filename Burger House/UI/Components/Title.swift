//
//  Title.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct Title: View {
    let name: String
    
    var body: some View {
        Text(name)
        .foregroundColor(theme.mainFontColor)
        .font(Font.custom(Constants.poppinsBold, size: 29))
    }
}

extension Title {
    init(_ name: String) {
        self.name = name
    }
}
