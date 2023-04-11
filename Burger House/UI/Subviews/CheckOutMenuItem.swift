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
