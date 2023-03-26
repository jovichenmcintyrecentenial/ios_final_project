//
//  GridView.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI


struct GridView: View {
    @State var isMenuItem = false
    @State var isDetailViewActive = false

    var body: some View {
        VStack {
            SizedBox(height: 10)
            ForEach(0..<4) { _ in
                       HStack {
                           CustomImageView(isMenuItem: $isMenuItem)
                               .navigation(to: DetailView())
                           Spacer()
                               .frame(width: 20)
                           CustomImageView(isMenuItem: $isMenuItem)
                               .navigation(to: DetailView())
                       }
                       .padding(.bottom)


            }
        }
     
    }
    
}

struct CustomImageView: View {
    @Binding var isMenuItem: Bool


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
                    Text("Burger Classic")
                        .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 17)
                        .foregroundColor(theme.mainFontColor)
                    if(!isMenuItem){
                        HStack{
                            Image("star").resizable().frame(width: 10,height: 10)
                            Text("$8.00")
                                .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 16)
                                .foregroundColor(theme.mainSubtleFontColor)
                            Text("200 cals")
                                .fontWithLineHeight(font: UIFont(name: Constants.poppinsBold, size:16)!, lineHeight: 16)
                                .foregroundColor(theme.mainSubtleFontColor)
                        }
                    }
                    else{
                        SizedBox(height: 5)
                    }
                    SizedBox(height: 10)

            }, alignment: .bottom)
            
                    
        }
        

    }
}
