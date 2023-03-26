//
//  Home.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading){
                    Subtitle("Hello Johnson")
                    Title("Hungry Now?")
                }
                Spacer()
                Image("temp_avatar")
            }
                .padding()
            Spacer()

        }
        .padding(.horizontal,20)
        .background(theme.backgroundColor)
        .frame(maxWidth: .infinity, maxHeight: .infinity )
    }
}

