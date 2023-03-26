//
//  SizedBox.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct SizedBox: View {
    var height: CGFloat?
    var width: CGFloat?
    
    var body: some View {
        Color.clear
            .frame(width: width ?? 0, height: height ?? 0)
    }
}
