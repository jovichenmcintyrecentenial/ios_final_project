//
//  CheckOutViewModel.swift
//  Burger House
//
//  Created by Kowndinya on 11/04/2023.
//

import Foundation
import RealmSwift

class CheckoutViewModel: ObservableObject {
    
    @Published var results: Results<MenuItem>
    @Published var subtotal: Double = 0
    @Published var serviceFee: Double = 0
    @Published var deliveryFee: Double = 0
    @Published var tax: Double = 0
    @Published var actualTotal: Double = 0
    
    var observer: NSObjectProtocol?
    
    init() {
        subtotal = Cart.getTotal()
        results = Cart.getItems()
        calculateFeesTaxAndTotal()
    }
    
    func calculateFeesTaxAndTotal() {
        let serviceFeePercent = 0.03 // 3% service fee
        let deliveryFeeAmount = 2.99 // fixed delivery fee amount
        let taxPercent = 0.13 // 13% tax
        serviceFee = subtotal * serviceFeePercent
        deliveryFee = deliveryFeeAmount
        tax = subtotal * taxPercent
        actualTotal = subtotal + serviceFee + deliveryFee + tax
    }
    
}
