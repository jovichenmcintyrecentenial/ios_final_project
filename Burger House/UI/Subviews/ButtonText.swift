//
//  ButtonText.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct ButtonText: View {
    let title: String
    let action: (() -> Void)? = nil
    var fontSize: CGFloat? = nil
    var color: Color = Color(hex: 0xDF933B)

    var body: some View {
        if let action = action {
            Button(action: action) {
                content
            }
        } else {
            content
        }
    }

    private var content: some View {
        Text(title)
            .font(Font.custom(Constants.poppinsMedium, size: fontSize ?? 18))
            .foregroundColor(color)
    }
}
