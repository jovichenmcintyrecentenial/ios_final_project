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

        }
      
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}





