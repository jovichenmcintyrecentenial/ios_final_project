//
//  Title.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct Title: View {
    let name: String
    let fontSize: CGFloat = 29

    
    var body: some View {
        Text(name)
        .foregroundColor(theme.mainFontColor)
        .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size: fontSize)!, lineHeight: fontSize)
        .lineSpacing(0)
    }
}

extension Title {
    init(_ name: String) {
        self.name = name
    }
}

struct FontWithLineHeight: ViewModifier {
    let font: UIFont
    let lineHeight: CGFloat

    func body(content: Content) -> some View {
        content
            .font(Font(font))
            .lineSpacing(lineHeight - font.lineHeight)
            .padding(.vertical, (lineHeight - font.lineHeight) / 2)
    }
}

extension View {
    func fontWithLineHeight(font: UIFont, lineHeight: CGFloat) -> some View {
        ModifiedContent(content: self, modifier: FontWithLineHeight(font: font, lineHeight: lineHeight))
    }
}
