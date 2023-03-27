//{{update here}}
//  MainTabBar.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            TabBarItem(icon: "home", index: 0, selectedTab: $selectedTab)
            TabBarItem(icon: "menu", index: 1, selectedTab: $selectedTab)
            TabBarItem(icon: "orders", index: 2, selectedTab: $selectedTab)
            TabBarItem(icon: "cart", index: 3, selectedTab: $selectedTab)
        }
        .padding(.horizontal,20 )
        .padding(.vertical,20 )
        .background(theme.backgroundColorLight)
        .cornerRadius(15)
        .padding(.horizontal,20 )

      
    }
}

struct TabBarItem: View {
    var icon: String
    var index: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = index
        }) {
            Image(icon)
                .renderingMode(.template)
                .foregroundColor(selectedTab == index ? theme.primaryColor : Color(hex: 0x231F20))
                .frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}
