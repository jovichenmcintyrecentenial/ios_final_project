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
