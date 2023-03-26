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





