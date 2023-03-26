//
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
}

var theme = Theme()

