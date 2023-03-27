//{{update here}}
//  MainButton.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct MainButton: View {
    let title: String
    var height: CGFloat = 60
    var fontSize: CGFloat = 18
    var fontName: String = Constants.poppinsBold
    var radius: CGFloat = 18
    let onTap: () -> Void
    var clickable: Bool = true

    var body: some View {
        if clickable {
            Button(action: onTap) {
                buttonView()
            }
        } else {
            buttonView()
        }
    }

    func buttonView() -> some View {
        Rectangle()
            .fill(theme.accentColor)
            .cornerRadius(radius)
            .frame(height: height)
            .overlay(
                Text(title)
                    .font(Font.custom(fontName, size: fontSize))
                    .foregroundColor(Color.white)
            )
    }
}
