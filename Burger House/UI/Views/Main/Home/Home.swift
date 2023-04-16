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
//  April 16, 2023

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
                    VStack(alignment: .leading) {
                        Subtitle("Hello \(LoginManager.getUser()!.firstName)")
                        Title("Hungry Now?")
                    }
                    Spacer()
                    Image("temp_avatar")
                }
                SizedBox(height: 5)
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



