//
//  CardModel.swift
//  Burger House
//
//  Created by Jovi on 28/03/2023.
//

import RealmSwift
class Cart {
    
    //static function use to access data
    static func getItems()->Results<MenuItem>{
        let realm = try! Realm()
        return realm.objects(MenuItem.self)
    }
        
    func removeItem(_ menuItem: MenuItem) {
        menuItem.delete()
    }
    
    func getAddedMenuItems(_ menuItem: MenuItem) -> Int {
        var count = 0
        
        let realm = try! Realm()
        
        for item in Cart.getItems(){
            if(item.ID == menuItem.ID){
                count += 1
            }
        }
        
        return count
    }
    
    func getTotal() -> Double {
        var total = 0.0
        for item in Cart.getItems(){
            total += item.price
        }
        return total
    }
    
    func getTotalFormatted() -> String {
        return String(format: "%.2f", getTotal())
    }
    
    func clearCartOfMenuItem(_ menuItem: MenuItem) {
        var itemToDeletes:[MenuItem] = []
        
        for item in Cart.getItems(){
            if(item.ID == menuItem.ID){
                itemToDeletes.append(item)
            }
        }
        
        for itemToDelete in itemToDeletes {
            itemToDelete.delete()
        }
    }
    
    func clearCart() {
        let realm = try! Realm()
        
        // Get all MenuItem objects from the Realm database
        let menuItems = realm.objects(MenuItem.self)
        
        // Delete all MenuItem objects
        try! realm.write {
            realm.delete(menuItems)
        }
    }
    
    func addItem(_ menuItem: MenuItem) {
        menuItem.create()
    }
    
    static func createOrderRequest() {
    }
}
