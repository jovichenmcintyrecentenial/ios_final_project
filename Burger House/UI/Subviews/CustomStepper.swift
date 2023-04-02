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
//  CustomStepper.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI
import RealmSwift

struct CustomStepper: View {
    
    @State var value: Int = 0
    
    var menuItem:MenuItem
    
    var body: some View {
        HStack {
            Button(action: {
                if value > 0 {
                    Cart.removeItem(menuItem)
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
     
                Cart.addItem(menuItem)
                value += 1
            }) {
                Image(systemName: "plus.circle")
                    .foregroundColor(theme.accentColor)
                
            }
            
        }
        .padding()
        .onAppear {
            value = Cart.getAddedMenuItems(menuItem)
        }
    }}
