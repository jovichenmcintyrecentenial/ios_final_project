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
    @Published var total: String = "0"
    @Published var serviceFee: String = "0"
    @Published var deliveryFee: String = "0"
    @Published var tax: String = "0"
    
    var observer: NSObjectProtocol?
    
    init() {
        total = Cart.getTotalFormatted()
        results = Cart.getItems()
        calculateFeesAndTax()
    }
    
    func calculateFeesAndTax() {
        let totalAmount = Cart.getTotal()
        let serviceFeePercent = 0.03 // 3% service fee
        let deliveryFeeAmount = 2.99 // fixed delivery fee amount
        let taxPercent = 0.13 // 13% tax
        let serviceFeeAmount = totalAmount * serviceFeePercent
        let taxAmount = totalAmount * taxPercent
        serviceFee = String(format: "$%.2f", serviceFeeAmount)
        deliveryFee = String(format: "$%.2f", deliveryFeeAmount)
        tax = String(format: "$%.2f", taxAmount)
    }
    
}
