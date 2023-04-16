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
//  OrderConfirmation.swift
//  Burger House
//
//  Created by Kowndinya on 11/04/2023.
//

import Foundation
import SwiftUI

struct CheckoutView: View {
    @Environment(\.presentationMode) var presentationMode

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
                MainButton(title: "Confirm",onTap:  {
                }, clickable:false)
                .navigation(to: OrderConfirmationView()) {
                    if viewModel.isValid() {
                        viewModel.createOrder()
//                        presentationMode.wrappedValue.dismiss()
                        return true
                    } else {
                        viewModel.showErrorAlert = true
                    }
                    
                    return false
                    
                
                
                    
                }.padding(.horizontal,20)
            }
            .padding(.horizontal,20)
            .background(theme.backgroundColor)
            .customNav()
            .alert(isPresented: $viewModel.showErrorAlert) {
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

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}



