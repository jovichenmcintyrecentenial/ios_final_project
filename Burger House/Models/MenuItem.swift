//
//  MenuModel.swift
//  Burger House
//
//  Created by Jovi on 28/03/2023.
//

import SwiftUI


class MenuItem {
    var id: Int
    var name: String
    var imageUrl: String
    var type: String
    var calories: Int
    var likes: Int
    var prepareTime: Int
    var price: Double
    var description: String
    
    init(id: Int, name: String, imageUrl: String, type: String, calories: Int, likes: Int, prepareTime: Int, price: Double, description: String) {
        self.id = id
        self.name = name
        self.imageUrl = imageUrl
        self.type = type
        self.calories = calories
        self.likes = likes
        self.prepareTime = prepareTime
        self.price = price
        self.description = description
    }
    
    
    
    static func getMenuItems()->[MenuItem]{
         var burgerMenuItems:[MenuItem] = []
             burgerMenuItems.append(
                 MenuItem(id: 2, name: "Spicy Jalapeño Burger", imageUrl: "burger_3", type: "Hot Burger", calories: 600, likes: 15, prepareTime: 20, price: 10.99, description: "Our Spicy Jalapeño Burger is the perfect choice for those who love a little heat! Our juicy beef patty is topped with fresh jalapeños, pepper jack cheese, and a spicy mayo that will make your taste buds dance. We use only the highest quality beef for our burgers, and our toppings are always fresh and flavorful. This burger packs a punch with every bite, and is sure to leave you satisfied. Pair it with one of our delicious sides and a cold drink for the ultimate meal. Come try our Spicy Jalapeño Burger today!")
             )

             burgerMenuItems.append(
                 MenuItem(id: 3, name: "Mushroom Swiss Burger", imageUrl: "burger_4", type: "Veggie Burger", calories: 550, likes: 12, prepareTime: 18, price: 11.99, description: "Our Mushroom Swiss Burger is a classic favorite that never goes out of style. Our juicy beef patty is topped with sautéed mushrooms, melted Swiss cheese, and a delicious garlic aioli that brings all the flavors together. We use only the highest quality beef for our burgers, and our toppings are always fresh and flavorful. This burger is the perfect choice for those who love a rich, savory taste. Pair it with one of our delicious sides and a cold drink for the ultimate meal. Come try our Mushroom Swiss Burger today and see why it's been a customer favorite for years!")
             )

             burgerMenuItems.append(
                 MenuItem(id: 4, name: "BBQ Bacon Burger", imageUrl: "burger_2", type: "Beef Burger", calories: 700, likes: 20, prepareTime: 22, price: 12.99, description: "Our BBQ Bacon Burger is a must-try for anyone who loves bold, smoky flavors. Our juicy beef patty is topped with crispy bacon strips, crispy onion rings, cheddar cheese, and tangy BBQ sauce that will have you reaching for more. We use only the highest quality beef for our burgers, and our toppings are always fresh and flavorful. This burger is the perfect choice for those who love a hearty, satisfying meal. Pair it with one of our delicious sides and a cold drink for the ultimate dining experience. Come try our BBQ Bacon Burger today and see why it's one of our most popular items!")
             )

             burgerMenuItems.append(
                 MenuItem(id: 5, name: "Buffalo Chicken Burger", imageUrl: "burger_5", type: "Chicken Burger", calories: 550, likes: 18, prepareTime: 20, price: 9.99, description: "Our Buffalo Chicken Burger is a spicy twist on a classic favorite. Our juicy chicken patty is coated in a tangy buffalo sauce, and topped with lettuce, tomato, and blue cheese dressing that will make your taste buds dance. We use only the highest quality chicken for our burgers, and our toppings are always fresh and flavorful. This burger is the perfect choice for those who love a little heat. Pair it with one of our delicious sides and a cold drink for the ultimate meal. Come try our Buffalo Chicken Burger today and see why it's a customer favorite!")
             )
             return burgerMenuItems
     }
}

