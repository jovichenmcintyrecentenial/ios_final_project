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
