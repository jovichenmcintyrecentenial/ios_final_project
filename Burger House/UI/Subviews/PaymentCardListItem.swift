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
