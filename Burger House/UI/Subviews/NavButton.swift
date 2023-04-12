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
    let conditionalNavigation: (() -> Bool)?

    init(destination: Destination, conditionalNavigation: (() -> Bool)? = nil) {
        self.destination = destination
        self.conditionalNavigation = conditionalNavigation
    }

    func body(content: Content) -> some View {
        ZStack {
            NavigationLink(destination: destination, isActive: $isActive) {
                EmptyView()
            }
            .hidden()
            content
                .onTapGesture {
                    if let navigationCondition = conditionalNavigation {
                        if navigationCondition() {
                            isActive = true
                        }
                    } else {
                        isActive = true
                    }
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
    func navigation<Destination: View>(to destination: Destination, conditionalNavigation: (() -> Bool)? = nil) -> some View {
        self.modifier(NavigationModifier(destination: destination, conditionalNavigation: conditionalNavigation))
    }
}


class NavigationHelper: ObservableObject {
    @Published var selection: String? = nil
}
