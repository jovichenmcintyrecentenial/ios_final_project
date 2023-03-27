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
//  Subtitle.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI


struct Subtitle: View {
    let name: String
    
    var body: some View {
        Text(name)
        .foregroundColor(theme.mainSubtleFontColor)
        .fontWithLineHeight(font: UIFont(name: Constants.poppinsMedium, size:16)!, lineHeight: 16)
    }
}

extension Subtitle {
    init(_ name: String) {
        self.name = name
    }
}
