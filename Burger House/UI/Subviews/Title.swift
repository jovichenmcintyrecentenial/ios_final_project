//{{update here}}
//  Title.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct Title: View {
    
    let name: String
    let fontName: String
    let fontSize: CGFloat

    var body: some View {
        
        Text(name)
                .foregroundColor(theme.mainFontColor)
                .fontWithLineHeight(font: UIFont(name: fontName, size: fontSize )!, lineHeight: fontSize)
                .lineSpacing(0)
    }
}

extension Title {
    init(_ name: String, fontName: String = Constants.poppinsBold, fontSize: CGFloat = 29) {
        self.name = name
        self.fontName = fontName
        self.fontSize = fontSize
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
