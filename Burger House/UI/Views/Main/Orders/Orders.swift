//
//  Orders.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct OrdersView: View {
    var body: some View {
        VStack(alignment: .leading) {
            AppBar("My Orders")
            SizedBox(height: 10)
            ScrollView{
                OrderCard()
                    .padding(.bottom,10)
                OrderCard()
                    .padding(.bottom,10)
                OrderCard()
                    .padding(.bottom,10)
                OrderCard()
                    .padding(.bottom,10)
            }
         
        }
        .padding(.horizontal, 20)
        .background(theme.backgroundColor)
    
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersView()
    }
}

struct OrderCard: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(theme.backgroundColorLight)
                .cornerRadius(18)
                .frame(maxWidth: .infinity)
            
            VStack {
                Subtitle("Order number:1023")
                    .crossAlignment(.leading)
                HStack {
                    Title("January 20, 2020",fontSize: 20)
                    Spacer()
                    Title("$40.00",fontSize: 20)
                }
                SizedBox(height: 5)
                HorizantalDivider(color: Color(hex:0x2E292A))
                SizedBox(height: 5)
                Subtitle("3 Items")
                    .crossAlignment(.leading)
                Subtitle("HOUSE Double and 2 more items ...")
                    .crossAlignment(.leading)
                
                SizedBox(height: 10)
                MainButton(title: "View Receipt",height: 40,fontSize: 15.0, radius: 10) {
                }
                .frame(width: 120).crossAlignment(.leading)

                
            }
            
            
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
        }
    }
}