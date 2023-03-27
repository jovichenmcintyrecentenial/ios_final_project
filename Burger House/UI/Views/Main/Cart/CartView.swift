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
//  Cart.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct CartView: View {
    @StateObject private var viewModel: CartViewModel = CartViewModel()

    var body: some View {
        VStack
        {
           if viewModel.isEmpty {
               VStack {
                   AppBar("My Cart")
                   Spacer()
                   Image("empty_cart_image")
                   SizedBox(height: 10)
                   Title("Your cart is empty",fontSize: 20)
                   SizedBox(height: 5)
                   Subtitle("When you add items to your cart, they will appear here")
                       .multilineTextAlignment(.center)
                   SizedBox(height: 10)
                   MainButton(title: "Start Shopping") {
                       emit(notificationName: .goShoppingPressed)
                   }.padding(.horizontal,40)
                    
                   Spacer()
               }
           } else {
               Text("Cart")
                   .padding()
           }
       }
        .background(theme.backgroundColor)
       .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}


