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
    
    static func getAddedMenuItems(_ menuItem: MenuItem) -> Int {
        let realm = try! Realm()

        let foundItem = realm.objects(MenuItem.self).filter("ID = %@", menuItem.ID).first
        
        if(foundItem != nil){
            return foundItem!.quantity
        }
        return 0
    }
    
    static func removeItem(_ menuItem: MenuItem) {
        
        let realm = try! Realm()
        
        let newItem:MenuItem? = realm.objects(MenuItem.self).filter("ID = %@", menuItem.ID).first
        
        do {
            try realm.write {
                if(newItem != nil) {
                    newItem!.quantity -= 1
                }
            }
        }
        catch {
            print("Error updating quantity: \(error)")
        }
        
        if(newItem != nil && newItem!.quantity <= 0){
            newItem?.delete()
        }
    }
    
    static func addItem(_ menuItem: MenuItem) {
        
        let realm = try! Realm()
        
        var newItem:MenuItem? = realm.objects(MenuItem.self).filter("ID = %@", menuItem.ID).first
       
        if(newItem == nil) {
            menuItem.create()
            newItem = menuItem
        }
        else{
            
        }
        
        do {
            try realm.write {
                newItem!.quantity += 1
            }
        }
        catch {
            print("Error updating quantity: \(error)")
        }
    }
    
    static func getTotal(_ menuItem: MenuItem) -> Double {
        var total = menuItem.price * Double(menuItem.quantity)
        
        return total
    }
    
    static func getTotalFormatted(_ menuItem: MenuItem) -> String {
        return String(format: "%.2f", getTotal(menuItem))
    }
    
    static func clearCartOfMenuItem(_ menuItem: MenuItem) {
        
        let realm = try! Realm()
        
        let newItem:MenuItem? = realm.objects(MenuItem.self).filter("ID = %@", menuItem.ID).first
    
        if(newItem != nil && newItem!.quantity <= 0){
            newItem?.delete()
        }
    }
    
    static func has(menuItem: MenuItem)->Bool {
        let realm = try! Realm()
        let menuItem = realm.objects(MenuItem.self).filter("ID = %@", menuItem.ID).first
       
        if(menuItem == nil){
            return false
        }
        
        return true
    }
    
    static func clearCart() {
        let realm = try! Realm()
        
        // Get all MenuItem objects from the Realm database
        let menuItems = realm.objects(MenuItem.self)
        
        // Delete all MenuItem objects
        try! realm.write {
            realm.delete(menuItems)
        }
    }

    
}
