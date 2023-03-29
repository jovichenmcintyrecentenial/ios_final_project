//
//  CardModel.swift
//  Burger House
//
//  Created by Jovi on 28/03/2023.
//

import Foundation
class Cart {
    
    var items:[MenuItem] = []
    
    func removeItem(_ menuItem: MenuItem) {
       
    }
    
    func getAddedMenuItems(_ menuItem: MenuItem) -> Int {
        return 0
    }
    
    func getTotal() -> Double {
        return 0.0
    }
    
    func getTotalFormatted() -> String {
        return String(format: "%.2f", getTotal())
    }
    
    func clearCartOfMenuItem(_ menuItem: MenuItem) {
        
    }
    
    func clearCart() {
    }
    
    func addItem(_ menuItem: MenuItem) {
       
    }
    
    static func createOrderRequest() {
    }
}
