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
        .fontWithLineHeight(font: UIFont(name: Constants.poppinsMedium, size:16)!, lineHeight: 16)
    }
}

extension Subtitle {
    init(_ name: String) {
        self.name = name
    }
}
