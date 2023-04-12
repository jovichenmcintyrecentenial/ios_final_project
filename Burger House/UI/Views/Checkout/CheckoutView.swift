//
//  OrderConfirmation.swift
//  Burger House
//
//  Created by Kowndinya on 11/04/2023.
//

import Foundation
import SwiftUI

struct CheckoutView: View {
    
    @StateObject private var viewModel: CheckoutViewModel = CheckoutViewModel()
    @State private var isBottomSheetOpen = true


    var body: some View {
        ZStack {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing:4) {
                        ForEach(viewModel.results) { item in
                            CheckoutMenuItem(menuItem: item,scaleFactor: 0.8)
                        }
                    }
                }
                SizedBox(height: 10)
//                CheckListItem(titleText: "Your Delivery Address", subtitleText: "Select an address" ,image: "card_map_pin")
//
                SizedBox(height: 2)
                CheckListItem(titleText: "Payment Method", subtitleText: viewModel.card != nil ? viewModel.card!.maskedNumbers() : "Select a payment method", image: "card_cc_icon")
                    .navigation(to: PaymentMethods(viewModel: viewModel))
                SizedBox(height: 10)

                VStack {
                    SummaryRow(label: "Subtotal", value: Cart.getTotal())
                       SummaryRow(label: "Delivery Fee", value: viewModel.deliveryFee)
                       SummaryRow(label: "Service Tax", value: viewModel.serviceFee)
                       HorizantalDivider(thickness: 0.5)
                       SummaryRow(label: "Total", value: viewModel.actualTotal, isTotal: true)
                           }
                .padding(16)
                .background(RoundedRectangle(cornerRadius: 15)
                    .fill(theme.backgroundColorLight)
                                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2))
                Spacer()
                MainButton(title: "Confirm"){
                    if viewModel.isValid() {
                        viewModel.createOrder()
                    } else {
                       viewModel.showError = true
                    }
                }.padding(.horizontal,20)
            }
            .padding(.horizontal,20)
            .background(theme.backgroundColor)
            .customNav()
            .alert(isPresented: $viewModel.showError) {
                Alert(
                    title: Text("Error"),
                    message: Text(viewModel.errorMessage),
                    dismissButton: .default(Text("OK"))
                )
            }
        .navigationTitle("Confirmation")

        }
    }
}

struct OrderConfirmation_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}



