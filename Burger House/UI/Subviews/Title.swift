//  GROUP NUMBER: 18
//  NAMES:
//  Clinton Nwadiukor  - 301291242
//  Jovi Chen-Mcintyre - 301125059
//  Vaishnavi Santhapuri - 301307031
//  Kowndinya Varanasi - 301210621
//
//  DESCRIPTION:
//  Burger House app is a mobile application designed to
//  simplify the process of ordering burgers and other fast
//  foods. It allows users to easily browse the menu, complete orders
//
//  REVISION HISTORY:
//  https://github.com/jovichenmcintyrecentenial/ios_final_project/commits/main
//
//  DATE LAST MODIFIED:
//  March 26, 2023
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
