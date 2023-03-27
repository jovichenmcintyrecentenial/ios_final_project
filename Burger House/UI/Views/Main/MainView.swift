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

struct MainView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            VStack {
                switch selectedTab {
                case 0:
                    HomeView()
                case 1:
                    MenuView()
                case 2:
                    OrdersView()
                default:
                    CartView()
                }
                CustomTabBar(selectedTab: $selectedTab)
            }
            .background(theme.backgroundColor)
            .onObserverNotification(.cartButtonPressed)
             { notification in
                selectedTab = 4
            }
             .onObserverNotification(.goShoppingPressed)
              { notification in
                 selectedTab = 1
             }
              .navigationBarBackButtonHidden(true)
             

        }
      
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}





