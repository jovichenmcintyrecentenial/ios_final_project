//{{update here}}
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

}

var theme = Theme()

