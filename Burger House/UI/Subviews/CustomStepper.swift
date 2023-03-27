//{{update here}}
//  CustomStepper.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct CustomStepper: View {
    @State var value: Int = 0
    
    var body: some View {
        HStack {
            Button(action: {
                if value > 0 {
                    value -= 1
                }
            }) {
                Image(systemName: "minus.circle")
                    .foregroundColor(theme.accentColor)
            }
            
            Text("\(value)")
                .padding(.horizontal, 10)
                .fontWithLineHeight(font: UIFont(name: Constants.poppinsMedium, size: 30)!, lineHeight: 30)
                      .foregroundColor(theme.mainFontColor)
            Button(action: {
                value += 1
            }) {
                Image(systemName: "plus.circle")
                    .foregroundColor(theme.accentColor)

            }
       
        }
        .padding()
    }
}
