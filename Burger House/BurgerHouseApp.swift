//
//  Burger_HouseApp.swift
//  Burger House
//
//  Created by Jovi on 25/03/2023.
//

import SwiftUI

@main
struct Burger_HouseApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SignInView()
            }.navigationViewStyle(.stack)
        }
    }
}
