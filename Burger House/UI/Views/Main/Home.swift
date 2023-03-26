//
//  Home.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    
    var body: some View {
        ScrollView{
            VStack(alignment:.leading) {
                HStack(alignment:.bottom){
                    VStack(alignment: .leading){
                        Subtitle("Hello Johnson")
                        Title("Hungry Now?")
                    }
                    Spacer()
                    Image("temp_avatar")
                }
                SizedBox(height: 10)
                RoundedTextField(placeholder: "Search your cravings", text: $viewModel.search)
                SizedBox(height: 10)
                Title("HOUSE Deal!")
                Subtitle("Top mouth watering deal of the week")
                Image("banner")
                    .resizable()
                    .scaledToFit()

                Title("Popular")
                Subtitle("Top orders in the HOUSE!")
                
                GridView()
                
            }
            .padding(.horizontal,20)
            .background(theme.backgroundColor)
            .frame(maxWidth: .infinity, maxHeight: .infinity )
        }
    }
}



