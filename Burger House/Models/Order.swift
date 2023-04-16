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
//  April 16, 2023

import Foundation
import RealmSwift

class Order: Object, Identifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var createdAt: Date?
    @Persisted var menuItems =  List<OrderMenuItem>()
    @Persisted var customerId: String?

    
    func getFormattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d, yyyy"
        return dateFormatter.string(from: createdAt!)
    }
    
    func getFees() -> [Fee] {
        let orderTotal = getSubTotal()
        var fees = [Fee]()
        let serviceFeePercent = 0.03 // 3% service fee
        let deliveryFeeAmount = 2.99 // fixed delivery fee amount
        let taxPercent = 0.13 // 13% tax
        
        // Calculate service fee
        let serviceFeeAmount = orderTotal * serviceFeePercent
        let serviceFee = Fee(name: "Service Fee", price: serviceFeeAmount)
        fees.append(serviceFee)
        
        // Add delivery fee
        let deliveryFee = Fee(name: "Delivery Fee", price: deliveryFeeAmount)
        fees.append(deliveryFee)
        
        // Calculate tax
        let taxAmount = orderTotal * taxPercent
        let tax = Fee(name: "Tax", price: taxAmount)
        fees.append(tax)
        
        return fees
    }
    
    func getTotal() -> Double {
        let subTotal = getSubTotal()
        var total = subTotal
        
        // Calculate fees sum
        let fees = getFees()
        for fee in fees {
            if let feePrice = fee.price {
                total += feePrice
            }
        }
        
        return total
    }
    
    func getFormattedTotal() -> String {
        let total = getTotal()
        return String(format: "$%.2f", total)
    }
    
    func getFormattedSubTotal() -> String {
        let total = getSubTotal()
        return String(format: "$%.2f", total)
    }
    
    static func createOrder(){
        
        let order = Order()
        order.createdAt = Date()
        let menuItemsResults = Cart.getItems()
         for menuItem in menuItemsResults {
             order.menuItems.append(OrderMenuItem.clone(menuItem: menuItem))
         }
        order.customerId = LoginManager.getUser()!._id.stringValue
        order.create()
    }
    
    func create(){
        let realm = try! Realm()
        
        do {
          try realm.write {
            realm.add(self)
          }
        } catch {
            
        }
    }
    
    func getSubTotal() -> Double {
        var totalCost: Double = 0.0
        for item in menuItems {
            totalCost += item.price * Double(item.quantity)
        }
        return totalCost
    }
    
    //static function use to access data
    static func getItems()->Results<Order>{
        let realm = try! Realm()
        return realm.objects(Order.self).sorted(byKeyPath: "createdAt", ascending: false)
    }
    
    
    static func clear() {
        let realm = try! Realm()
        
        // Get all MenuItem objects from the Realm database
        let menuItems = realm.objects(Order.self)
        
        // Delete all MenuItem objects
        try! realm.write {
            realm.delete(menuItems)
        }
    }
    
    func getMenuItemsString(maxLength: Int) -> String {
        var itemsString = ""
        var itemNames = [String]()

        // Get the names of the menu items
        for item in menuItems {
            itemNames.append(item.name)
        }

        // Combine the item names into a string with commas and "and"
        if itemNames.count == 1 {
            itemsString = itemNames.first ?? ""
        } else if itemNames.count == 2 {
            itemsString = "\(itemNames.first!) and \(itemNames.last!)"
        } else if itemNames.count > 2 {
            for (index, name) in itemNames.enumerated() {
                if index < itemNames.count - 2 {
                    itemsString += "\(name), "
                } else if index == itemNames.count - 2 {
                    itemsString += "\(name) and "
                } else {
                    itemsString += "\(name)"
                }
            }
        }

        // Truncate the string if it's too long
        if itemsString.count > maxLength {
            let endIndex = itemsString.index(itemsString.startIndex, offsetBy: maxLength - 3)
            itemsString = String(itemsString[..<endIndex]) + "..."
        }

        return itemsString
    }
   
}
