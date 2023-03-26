//
//  NavButton.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct NavigationModifier<Destination: View>: ViewModifier {
    @State private var isActive = false
    let destination: Destination

    init(destination: Destination) {
        self.destination = destination
    }

    func body(content: Content) -> some View {
        ZStack {
            NavigationLink(destination: destination, isActive: $isActive) {
                EmptyView()
            }
            .hidden()
            content
                .onTapGesture {
                    isActive = true
                }
        }
    }
}

extension View {
    func navigation<T: View>(to destination: T) -> some View {
        self.modifier(NavigationModifier(destination: destination))
    }
}
