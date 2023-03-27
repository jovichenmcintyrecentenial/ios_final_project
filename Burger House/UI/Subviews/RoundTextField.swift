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
//  RoundTextField.swift
//  Burger House
//
//  Created by Jovi on 25/03/2023.
//

import SwiftUI

struct RoundedTextField: View {
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $text,onCommit: {
                })
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
            } else {
                TextField(placeholder, text: $text)
            }
        }
        .font(Font.custom(Constants.poppinsMedium, size: 16))
        .placeHolder(
            Text(placeholder)
                .foregroundColor(theme.mainSubtleFontColor),
            show: text.count == 0)
        .foregroundColor(theme.mainFontColor)
        .padding(.horizontal,30)
        .frame(minHeight: 69)
        .background(theme.backgroundColorLight)
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(theme.backgroundColorLight, lineWidth: 1))
    }
}


struct PlaceHolder<T: View>: ViewModifier {
    var placeHolder: T
    var show: Bool
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if show { placeHolder }
            content
        }
    }
}

extension View {
    func placeHolder<T:View>(_ holder: T, show: Bool) -> some View {
        self.modifier(PlaceHolder(placeHolder:holder, show: show))
    }
}
