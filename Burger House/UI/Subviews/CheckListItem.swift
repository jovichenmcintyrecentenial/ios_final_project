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

