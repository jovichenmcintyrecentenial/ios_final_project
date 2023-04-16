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

import SwiftUI

struct OrderRecieptView: View {
    let order: Order
    
    var body: some View {
            VStack {
                ScrollView(showsIndicators: false) {

                ZStack {
                    VStack {
                        HStack {
                            Image("logo-full")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100 )
                            Spacer()
                            Subtitle("Order \(String(order.hash).suffix(5))")
                                .fontWeight(.bold)
                        }
                        SizedBox(height: 10)
                        Title("Thanks for ordering",fontName: Constants.poppinsMedium).crossAlignment(.leading)
                        
                        Subtitle("Here's the receipt for your order").crossAlignment(.leading)
                        SizedBox(height: 60)
                        Subtitle(order.getFormattedDate()).crossAlignment(.leading)
                    }
                    .padding(20)
                    .background(theme.backgroundColorLight)
                    
                    Image("burger_house_bag")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90 )
                        .crossAlignment(.trailing)
                        .padding(.top,210)
                        .padding(.trailing,30)
                }
                
                VStack {
                    TotalRowItem(label: "Total",amount: order.getFormattedTotal())
                        .padding(.vertical,20)
                    HorizantalDivider(thickness: 0.3)
                    SizedBox(height: 10)
                    ForEach(order.menuItems, id: \.ID) { menu in
                        RowMenuItem(title:menu.name, amount: menu.getFormattedPrice(), quantity: menu.quantity)
                    }
                    HorizantalDivider(thickness: 0.4)
                        .padding(.vertical,20)
                    RowMenuItem(title: "Subtotal", amount: order.getFormattedSubTotal())
                    // Fees rows
                   ForEach(order.getFees(), id: \.name) { fee in
                       if let name = fee.name, let price = fee.price {
                           RowMenuItem(title: name, amount: String(format: "$%.2f", price))
                       }
                   }                }
                .padding(.horizontal,30)
                
            }
            .navigationTitle("Receipt")
            .background(theme.backgroundColor)
        }
        .background(theme.backgroundColor)
        .customNav()

        .onAppear(perform: {
            UIScrollView.appearance().bounces = false
            if #available(iOS 15.0, *) {
                  let tabBarAppearance = UITabBarAppearance()
                  tabBarAppearance.configureWithOpaqueBackground()
                  UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
              }

        })
        

    }
}


struct TotalRowItem: View {
    let label: String
    let amount: String

    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Title(label)
                    .fontWeight(.semibold)
                Spacer()
                Title(amount)
                    .fontWeight(.bold)
            }
            Divider()
        }
    }


}


struct Badge: View {
    let quantity: Int

    var body: some View {
        Subtitle("\(quantity)")
            .font(.caption)
            .padding(.horizontal, 6)
            .padding(.vertical, 4)
            .foregroundColor(theme.mainSubtleFontColor)
            .background(theme.backgroundColorLight)
    }
}

struct RowMenuItem: View {
    let title: String
    let amount: String
    var quantity: Int? = nil

    var body: some View {
        HStack(spacing: 8) {
            if let quantity = quantity, quantity > 0 {
                Badge(quantity: quantity)
            }
            Subtitle(title)
                .lineLimit(1)
                .foregroundColor(.primary)
            Spacer()
            Subtitle(amount)
                .fontWeight(.bold)
        }
        .padding(.bottom, 10)
    }
}
