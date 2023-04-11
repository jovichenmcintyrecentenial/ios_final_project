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

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 1) {
                            ForEach(viewModel.results) { item in
                                CheckoutMenuItem(menuItem: item,scaleFactor: 0.8)
                            }
                        }
                        .padding()
                    }
            SizedBox(width: .infinity)
            Spacer()
        }
        .background(theme.backgroundColor)
        .customNav()

        .navigationTitle("Confirmation")
    }
}

struct OrderConfirmation_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}

