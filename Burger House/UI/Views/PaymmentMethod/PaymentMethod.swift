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

