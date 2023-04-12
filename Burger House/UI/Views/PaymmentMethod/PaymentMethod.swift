//
//  PaymentMethod.swift
//  Burger House
//
//  Created by Kowndinya on 11/04/2023.
//

import Foundation
import SwiftUI

struct PaymentMethods: View {
    
    @ObservedObject var viewModel: CheckoutViewModel
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            SizedBox(height: 20)

            ForEach(Card.getCards()) { card in
                PaymentCardListItem(card: card){
                    viewModel.card = card
                    presentationMode.wrappedValue.dismiss()
                }
               
            }
            .padding(.horizontal,20)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(theme.backgroundColor)
        .customNav()
        .navigationTitle("Payment Method")
    }
}

extension Date {
    func toString(dateFormat format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}

