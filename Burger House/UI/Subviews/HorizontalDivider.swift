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
//  HorizontalDivider.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct HorizantalDivider: View {
    let color: Color
    let thickness: CGFloat
    
    init(color: Color = .gray, thickness: CGFloat = 1) {
        self.color = color
        self.thickness = thickness
    }
    
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: thickness)
    }
}
