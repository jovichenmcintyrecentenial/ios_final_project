//
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
