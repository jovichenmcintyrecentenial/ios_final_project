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
                
                VStack{
                    HStack{
                        CustomImageView()
                        SizedBox(width: 8)
                        CustomImageView()
                        
                    }
                    HStack{
                        CustomImageView()
                        SizedBox(width: 8)
                        CustomImageView()
                        
                    }
                    HStack{
                        CustomImageView()
                        SizedBox(width: 8)
                        CustomImageView()
                        
                    }
                }
                


                
            }
            .padding(.horizontal,20)
            .background(theme.backgroundColor)
            .frame(maxWidth: .infinity, maxHeight: .infinity )
        }
    }
}




struct CustomImageView: View {
    var body: some View {
        ZStack () {
            RoundedRectangle(cornerRadius: 20)
                .stroke(theme.backgroundColorLight, lineWidth: 2)
                .background(theme.backgroundColorLight.clipShape(RoundedRectangle(cornerRadius: 20))).padding(.top, 50)
            
            Image("burger_2")
                .resizable()
                .scaledToFit()
                .frame(height: 120).padding(.bottom,60)
           

        }
        .overlay(
            VStack{
                Text("Burger Classic")
                    .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 17)
                    .foregroundColor(theme.mainFontColor)
                HStack{
                    Image("star").resizable().frame(width: 10,height: 10)
                    Text("$8.00")
                        .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 16)
                        .foregroundColor(theme.mainSubtleFontColor)
                    Text("200 cals")
                        .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 16)
                        .foregroundColor(theme.mainSubtleFontColor)
                }
                SizedBox(height: 10)

            }, alignment: .bottom)

    }
}
