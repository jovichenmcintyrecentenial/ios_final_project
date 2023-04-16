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

//
//  SummaryRowItem.swift
//  Burger House
//
//  Created by Jovi on 11/04/2023.
//

import Foundation
import SwiftUI

struct SummaryRow: View {
    let label: String
    let value: Double
    var isTotal: Bool? = nil
    
    var body: some View {
        HStack {
            Text(label)
                .foregroundColor(isTotal == true ? theme.mainSubtleFontColor : .gray)
                .font(isTotal == true ? .headline : .subheadline)
            Spacer()
            Text("$\(String(format: "%.2f", value))")
                .foregroundColor(isTotal == true ? theme.mainFontColor : theme.mainFontColor)
                .font(isTotal == true ? .headline : .subheadline)
        }
        .padding(.vertical, isTotal == true ? 8 : 4)
    }
}
