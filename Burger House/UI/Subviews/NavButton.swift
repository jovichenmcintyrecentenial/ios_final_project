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
//  March 26, 2023
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
                .onAppear {
                    let appearance = UINavigationBarAppearance()
                    appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                    appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                    UINavigationBar.appearance().standardAppearance = appearance

                }

        }
    }
}

extension View {
    func navigation<T: View>(to destination: T) -> some View {
        self.modifier(NavigationModifier(destination: destination))
    }
}
