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
//  GridView.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct GridView: View {
    @State var isMenuItem = false
    @State var isDetailViewActive = false
    @State var index = 0

    var body: some View {
        VStack {
            SizedBox(height: 10)
            ForEach(0..<MenuItem.getMenuItems().count/2, id:\.self) { index in
                       HStack {
                           CustomImageView(isMenuItem: $isMenuItem,menuItem:MenuItem.getMenuItems()[index])
                               .navigation(to: DetailView())
                           Spacer()
                               .frame(width: 20)
                           CustomImageView(isMenuItem: $isMenuItem, menuItem: MenuItem.getMenuItems()[index+1])
                               .navigation(to: DetailView())
                       }
                       .padding(.bottom)


            }
        }
     
    }
    
}

struct CustomImageView: View {
    @Binding var isMenuItem: Bool
    var menuItem:MenuItem


    var body: some View {
        VStack{
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
                    Text(menuItem.name)
                        .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 17)
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                        .foregroundColor(theme.mainFontColor)
                        .padding(.horizontal,10)
                    if(!isMenuItem){
                        HStack{
                            Image("star").resizable().frame(width: 10,height: 10)
                            Text(String(format: "$%.2f", menuItem.price))
                                .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 16)
                                .foregroundColor(theme.mainSubtleFontColor)
                            Spacer()
                            Text("\(menuItem.calories) Cals")
                                .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 16)
                                .foregroundColor(theme.mainSubtleFontColor)
                        }.padding(.horizontal,10)
                    }
                    else{
                        SizedBox(height: 5)
                    }
                    SizedBox(height: 10)

            }, alignment: .bottom)
            
                    
        }
        

    }
}
