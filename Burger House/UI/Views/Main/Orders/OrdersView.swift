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
//  Orders.swift
//  Burger House
//
//  Created by Jovi on 26/03/2023.
//

import SwiftUI

struct OrdersView: View {
    
    @StateObject private var viewModel: OrderViewModel = OrderViewModel()

    
    var body: some View {
        VStack(alignment: .leading) {
            AppBar("My Orders")
            SizedBox(height: 10)
            ScrollView(showsIndicators: false){
                ForEach(viewModel.results) { item in
                    OrderCard(order: item)
                        .padding(.bottom,10)
                }
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
    var order: Order

    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(theme.backgroundColorLight)
                .cornerRadius(18)
                .frame(maxWidth: .infinity)
            
            VStack {
                Subtitle("Order number: \(String(order.hash).suffix(5))")
                    .crossAlignment(.leading)
                HStack {
                    Title(order.getFormattedDate(),fontSize: 20)
                    Spacer()
                    Title("\(String(format: "$%.2f", order.getTotal()))",fontSize: 20)
                }
                SizedBox(height: 5)
                HorizantalDivider(color: Color(hex:0x2E292A))
                SizedBox(height: 5)
                Subtitle("\(order.menuItems.count) Item(s)")
                    .crossAlignment(.leading)
                Subtitle(order.getMenuItemsString(maxLength: 35))
                    .crossAlignment(.leading)
                
                VStack {
                    SizedBox(height: 5)

                    MainButton(title: "View Receipt", height: 40, fontSize: 15.0, radius: 10, onTap: {},clickable:false)
                        .navigation(to: OrderRecieptView(order: order))
                }
                .frame(width: 120)
                .crossAlignment(.leading)
                
            }

            
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
        }
    }
}
