//
//  Menu.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct MenuView: View {
    @StateObject private var viewModel = HomeViewModel()
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image("header")
                }.overlay(
                    
                    VStack (alignment: .leading ){
                        Text("Menu")
                            .fontWithLineHeight(font: UIFont(name: Constants.poppinsRegular, size: 70)!, lineHeight: 24)
                      
                        .foregroundColor(Color(hex: 0xE7B547))
                        SizedBox(height: 10)
                        Subtitle("Choose from our assorted menu")
                        SizedBox(height: 10)

                        RoundedTextField(placeholder: "Search your cravings", text: $viewModel.search)
                    }
                        .padding(.horizontal,20)
                        .padding(.top, 200)
                    ,alignment: .leading)
                GridView(isMenuItem: true).padding(.horizontal,20)
                Spacer()
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
     
        }   .ignoresSafeArea(.all)
    }
}
