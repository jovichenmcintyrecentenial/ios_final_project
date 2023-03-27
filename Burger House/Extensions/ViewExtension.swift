//{{update here}}
//  View.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct CrossAlignmentModifier: ViewModifier {
    var alignment: HorizontalAlignment
    
    func body(content: Content) -> some View {
        HStack {
            if alignment == .trailing {
                Spacer()
            }
            content
            if alignment == .leading {
                Spacer()
            }
        }
    }
}

extension View {
    func crossAlignment(_ alignment: HorizontalAlignment) -> some View {
        self.modifier(CrossAlignmentModifier(alignment: alignment))
    }
}
