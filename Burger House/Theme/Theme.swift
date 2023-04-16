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
//  April 16, 2023
//  Theme.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

class Theme:ObservableObject {
    @Published var primaryColor: Color = Color(hex:0xDF933B)
    @Published var backgroundColor: Color = Color(hex:0x231F20)
    @Published var backgroundColorLight: Color = Color(hex:0x363031)
    @Published var mainFontColor: Color = Color(hex:0xE1E3EB)
    @Published var mainSubtleFontColor: Color = Color(hex:0x7A7D86)
    @Published var accentColor: Color = Color(hex:0xDF933B)
    
    func applyAlternativeTheme() {
        primaryColor = Color(hex: 0x8B4513)
        backgroundColor = Color(hex: 0xF5DEB3)
        backgroundColorLight = Color(hex: 0xFFF8DC)
        mainFontColor = Color(hex: 0x4B0082)
        mainSubtleFontColor = Color(hex: 0x8B008B)
        accentColor = Color(hex: 0x6B8E23)
    }

}


var theme = Theme()



