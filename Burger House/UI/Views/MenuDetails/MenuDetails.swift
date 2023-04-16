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
//  MenuDetails.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct DetailView: View {
    @State var value: Int = 0
    var menuItem:MenuItem
    var body: some View {
        
        VStack {

            Title(menuItem.name)            .multilineTextAlignment(.center)

            Subtitle(menuItem.type)
            Image(menuItem.imageUrl)
                .resizable()
                .scaledToFit()
            SizedBox(height: 10)
            HStack {
                InfoView(imageName: "clock", text: "\(menuItem.prepareTime) min")
                Spacer()
                InfoView(imageName: "flame", text: "\(menuItem.calories) cals")
                Spacer()
                InfoView(imageName: "star_2", text: "\(menuItem.likes) likes")
            }
            SizedBox(height: 10)
            Text(menuItem.desc)
                .fontWithLineHeight(font: UIFont(name: Constants.poppinsRegular, size: 16)!, lineHeight: 16)
                      .foregroundColor(theme.mainFontColor)
            Spacer()

            HStack{
                Title(String(format: "$%.2f",menuItem.price)).lineLimit(1).minimumScaleFactor(0.1)
                CustomStepper(menuItem:menuItem).layoutPriority(1000000)
                    .layoutPriority(100000)
                Button(action: {
                    emit(notificationName: .cartButtonPressed)
                }) {
                    Image("menu_button")
                }
            }
            SizedBox(height: 10)

        }
        .onDisappear {
        }
        .padding(.horizontal,50)
            .background(theme.backgroundColor)
            .customNav()

        
    }
    
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            DetailView()
//                .foregroundColor(.white)
//        }
//    }
//}


struct InfoView: View {
    let imageName: String
    let text: String
    
    var body: some View {
        HStack {
            Image(imageName)
            Text(text)
                .fontWithLineHeight(font: UIFont(name: Constants.poppinsRegular, size: 14)!, lineHeight: 14)
                      .foregroundColor(theme.mainFontColor)
        }
    }
}


