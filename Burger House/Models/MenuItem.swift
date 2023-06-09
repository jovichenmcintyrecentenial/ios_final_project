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

//
//  MenuModel.swift
//  Burger House
//
//  Created by Jovi on 28/03/2023.
//

import SwiftUI
import RealmSwift

class MenuItem: Object,Identifiable {
    
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var ID: Int
    @Persisted var name: String
    @Persisted var imageUrl: String
    @Persisted var type: String
    @Persisted var calories: Int
    @Persisted var likes: Int
    @Persisted var prepareTime: Int
    @Persisted var price: Double
    @Persisted var desc: String
    @Persisted var quantity: Int

    
    override init() {
        
    }

    
    convenience init(ID: Int, name: String, imageUrl: String, type: String, calories: Int, likes: Int, prepareTime: Int, price: Double, desc: String) {
        self.init()
        self.ID = ID
        self.name = name
        self.imageUrl = imageUrl
        self.type = type
        self.calories = calories
        self.likes = likes
        self.prepareTime = prepareTime
        self.price = price
        self.desc = desc
        self.quantity = 0
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
    

    func decreaseQunatity(){
        
        let realm = try! Realm()
        try! realm.write {
       
            quantity -= 1

            if(quantity < 0){
                quantity = 0
            }
        }
    }
    
    func getFormattedPrice() -> String {
        return String(format: "$%.2f", price)
    }
    
    //function use to delete obj from realm database
    func delete(){
        let realm = try! Realm()
        try! realm.write {
            realm.delete(self)
        }
    }
    
    static func getMenuItems()->[MenuItem]{
         var burgerMenuItems:[MenuItem] = []
             burgerMenuItems.append(
                 MenuItem(ID: 2, name: "Jalapeño Burger", imageUrl: "burger_3", type: "Hot Burger", calories: 600, likes: 15, prepareTime: 20, price: 10.99, desc: "Our Spicy Jalapeño Burger is the perfect choice for those who love a little heat! Our juicy beef patty is topped with fresh jalapeños, pepper jack cheese, and a spicy mayo that will make your taste buds dance. We use only the highest quality beef for our burgers, and our toppings are always fresh and flavorful. This burger packs a punch with every bite, and is sure to leave you satisfied. Pair it with one of our delicious sides and a cold drink for the ultimate meal. Come try our Spicy Jalapeño Burger today!")
             )

             burgerMenuItems.append(
                 MenuItem(ID: 3, name: "Mushroom Burger", imageUrl: "burger_4", type: "Veggie Burger", calories: 550, likes: 12, prepareTime: 18, price: 11.99, desc: "Our Mushroom Swiss Burger is a classic favorite that never goes out of style. Our juicy beef patty is topped with sautéed mushrooms, melted Swiss cheese, and a delicious garlic aioli that brings all the flavors together. We use only the highest quality beef for our burgers, and our toppings are always fresh and flavorful. This burger is the perfect choice for those who love a rich, savory taste. Pair it with one of our delicious sides and a cold drink for the ultimate meal. Come try our Mushroom Swiss Burger today and see why it's been a customer favorite for years!")
             )

             burgerMenuItems.append(
                 MenuItem(ID: 4, name: "BBQ Burger", imageUrl: "burger_2", type: "Beef Burger", calories: 700, likes: 20, prepareTime: 22, price: 12.99, desc: "Our BBQ Bacon Burger is a must-try for anyone who loves bold, smoky flavors. Our juicy beef patty is topped with crispy bacon strips, crispy onion rings, cheddar cheese, and tangy BBQ sauce that will have you reaching for more. We use only the highest quality beef for our burgers, and our toppings are always fresh and flavorful. This burger is the perfect choice for those who love a hearty, satisfying meal. Pair it with one of our delicious sides and a cold drink for the ultimate dining experience. Come try our BBQ Bacon Burger today and see why it's one of our most popular items!")
             )

             burgerMenuItems.append(
                 MenuItem(ID: 5, name: "Chicken Burger", imageUrl: "burger_5", type: "Chicken Burger", calories: 550, likes: 18, prepareTime: 20, price: 9.99, desc: "Our Buffalo Chicken Burger is a spicy twist on a classic favorite. Our juicy chicken patty is coated in a tangy buffalo sauce, and topped with lettuce, tomato, and blue cheese dressing that will make your taste buds dance. We use only the highest quality chicken for our burgers, and our toppings are always fresh and flavorful. This burger is the perfect choice for those who love a little heat. Pair it with one of our delicious sides and a cold drink for the ultimate meal. Come try our Buffalo Chicken Burger today and see why it's a customer favorite!")
             )
             return burgerMenuItems
     }
    
    
    
}

class OrderMenuItem: MenuItem {
    
    
   static func clone(menuItem:MenuItem) -> OrderMenuItem {
        let clonedMenuItem = OrderMenuItem()
        clonedMenuItem.ID = menuItem.ID
        clonedMenuItem.name = menuItem.name
        clonedMenuItem.imageUrl = menuItem.imageUrl
        clonedMenuItem.type = menuItem.type
        clonedMenuItem.calories = menuItem.calories
        clonedMenuItem.likes = menuItem.likes
        clonedMenuItem.prepareTime = menuItem.prepareTime
        clonedMenuItem.price = menuItem.price
        clonedMenuItem.desc = menuItem.desc
        clonedMenuItem.quantity = menuItem.quantity
        return clonedMenuItem
    }
    
}


