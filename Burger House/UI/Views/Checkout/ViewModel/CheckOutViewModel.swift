//
//  CheckOutViewModel.swift
//  Burger House
//
//  Created by Kowndinya on 11/04/2023.
//

import Foundation
import RealmSwift

class CheckoutViewModel: ErrorHandling {
    
    @Published var results: Results<MenuItem>
    @Published var subtotal: Double = 0
    @Published var serviceFee: Double = 0
    @Published var deliveryFee: Double = 0
    @Published var tax: Double = 0
    @Published var actualTotal: Double = 0
    @Published var card: Card?

    
    
    
    var observer: NSObjectProtocol?
    
    override init() {
        subtotal = Cart.getTotal()
        results = Cart.getItems()
        super.init()

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
    
    override func isValid() -> Bool {
        if(card == nil){
            errorMessage = "Please select a payment method"
            return false
        }
        return true
    }
    
    func createOrder(){
        
    }
    
}
