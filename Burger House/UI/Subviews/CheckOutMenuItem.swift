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

//
//  CheckOutMenuItem.swift
//  Burger House
//
//  Created by Kowndinya on 11/04/2023.
//

import Foundation
import SwiftUI

struct CheckoutMenuItem: View {
    var menuItem: MenuItem
    var scaleFactor: CGFloat = 1.0 // default scale factor is 1.0
    
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20 * scaleFactor)
                .fill(theme.backgroundColorLight)
                .frame(width: 160 * scaleFactor, height: 120 * scaleFactor)
                .padding(.top, 60 * scaleFactor)
            
            VStack {
                Image(menuItem.imageUrl)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140 * scaleFactor, height: 100 * scaleFactor)
                Title(menuItem.name, fontSize: 15 * scaleFactor)
                    .font(.headline)
            }
            .padding()
            
            ZStack {
                Circle()
                    .fill(theme.accentColor)
                    .frame(width: 30 * scaleFactor, height: 30 * scaleFactor)
                Text("\(menuItem.quantity)")
                    .minimumScaleFactor(0.1)

                    .foregroundColor(.white)
                    .font(.system(size: 20 * scaleFactor))
            }
            .padding(.top, 40 * scaleFactor)
            .padding(.leading, 130 * scaleFactor)
        }
    }
}
