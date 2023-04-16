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
//  PaymentCardListItem.swift
//  Burger House
//
//  Created by Jovi on 12/04/2023.
//

import Foundation
import SwiftUI

struct PaymentCardListItem: View {
    let card: Card
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap) {
            HStack {
                Image("card_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                SizedBox(width: 10)
                VStack(alignment: .leading) {

                    Text(card.maskedNumbers())
                        .foregroundColor(theme.mainFontColor)
                    HStack {
                        Text("Expiry Date: ")
                            .font(.caption)
                        Text(card.expiryDate?.toString(dateFormat: "MM/yy") ?? "")
                            .font(.caption)
                            .foregroundColor(theme.mainSubtleFontColor)
                        Spacer()
                        Text("CVV: \(card.cvv ?? "")")
                            .font(.caption)
                            .foregroundColor(theme.mainSubtleFontColor)
                    }
                }
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 20)
            .background(theme.backgroundColorLight)
            .cornerRadius(15)
        }
    }
}
