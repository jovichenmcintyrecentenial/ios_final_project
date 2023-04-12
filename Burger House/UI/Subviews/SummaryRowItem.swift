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
