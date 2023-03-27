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
