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
                if LoginManager.getUser() != nil {
                    NavigationView {
                        MainView()
                    }.navigationViewStyle(.stack).environmentObject(NavigationHelper())
                } else {
                    NavigationView {
                        SignInView()
                    }.navigationViewStyle(.stack).environmentObject(NavigationHelper())
                }
            }
        }
}
