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
    
    var body: some View {
        VStack {
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(theme.backgroundColor)
        .customNav()
        .navigationTitle("Payment Method")
    }
}


