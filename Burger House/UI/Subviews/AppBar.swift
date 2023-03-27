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
//  AppBar.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI
struct AppBar: View {
    let title: String
    let backgroundColor: Color
    
    init(_ title: String, backgroundColor: Color = .clear) {
        self.title = title
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        HStack {
            Spacer()
            
            Title(title,fontSize: 24)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(backgroundColor)
    }
}
