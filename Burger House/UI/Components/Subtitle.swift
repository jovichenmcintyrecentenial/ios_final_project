//
//  Subtitle.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI


struct Subtitle: View {
    let name: String
    
    var body: some View {
        Text(name)
        .foregroundColor(theme.mainSubtleFontColor)
        .font(Font.custom(Constants.poppinsMedium, size: 16))
    }
}

extension Subtitle {
    init(_ name: String) {
        self.name = name
    }
}
