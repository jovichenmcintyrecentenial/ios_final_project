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

//
//  CheckListItem.swift
//  Burger House
//
//  Created by Jovi on 11/04/2023.
//

import Foundation
import SwiftUI

struct CheckListItem: View {
    var titleText: String
    var subtitleText: String
    var image:String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Subtitle(titleText)
                 
                HStack {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Title(subtitleText,fontName: Constants.poppinsRegular,fontSize: 17)
                    

                }
            }
            Spacer()
            Image("chevron_right")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        }
        .padding(.horizontal,20)
        .padding(.vertical,16)
        .background(RoundedRectangle(cornerRadius: 18)
            .fill(theme.backgroundColorLight)
                       )
       
    }
}

