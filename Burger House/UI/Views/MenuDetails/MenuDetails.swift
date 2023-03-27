//{{update here}}
//  MenuDetails.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct DetailView: View {
    @State var value: Int = 0

    var body: some View {
        
        VStack {

            Title("HOUSE Double")
            Subtitle("Cheeseburgers")
            Image("burger_2")
                .resizable()
                .scaledToFit()
            SizedBox(height: 10)
            HStack {
                InfoView(imageName: "clock", text: "30 min")
                Spacer()
                InfoView(imageName: "flame", text: "200 cals")
                Spacer()
                InfoView(imageName: "star_2", text: "50 likes")
            }
            SizedBox(height: 10)
            Text("Enriched Wheat Flour (Barley), Water, Glucose-Fructose, Yeast, Soybean Oil, Salt, Calcium Sulphate, Ascorbic Acid, Sodium Stearoyl-2-Lactylate, Isolated Protein (Pea, Rice and Potato), Sunflower Oil, Dextrose, Maltodextrin, Corn Starch, Monoglycerides, Calcium Propionate, Amylase, Glucoamylase, Glucose Oxidase, Lipase, Pentosanase. CONTAINS WHEAT AND BARLEY.")
                .fontWithLineHeight(font: UIFont(name: Constants.poppinsRegular, size: 16)!, lineHeight: 16)
                      .foregroundColor(theme.mainFontColor)
            Spacer()

            HStack{
                Title("$18.00")
                CustomStepper()
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

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView()
                .foregroundColor(.white)
        }
    }
}


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


