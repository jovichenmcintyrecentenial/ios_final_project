import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            if selectedTab == 0 {
                PageOne()
            } else if selectedTab == 1 {
                PageTwo()
            } else {
                PageThree()
            }
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .background(theme.backgroundColor)

    }
    
}

struct PageOne: View {
    var body: some View {
        VStack {
            Text("Page One")
                .padding()
        }
    
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct PageTwo: View {
    var body: some View {
        VStack {
            Text("Page Tow")
                .padding()
        }
    
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct PageThree: View {
    var body: some View {
            VStack {
                Text("Page Three")
                    .padding()
            }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity) // fill the available space
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        HStack {
            TabBarItem(icon: "home", index: 0, selectedTab: $selectedTab)
            TabBarItem(icon: "home", index: 1, selectedTab: $selectedTab)
            TabBarItem(icon: "3.square.fill", index: 2, selectedTab: $selectedTab)
        }
        .padding(.horizontal,20 )
        .padding(.vertical,20 )
        .background(theme.backgroundColorLight)
        .cornerRadius(15)
        .padding(.horizontal,20 )

      
    }
}

struct TabBarItem: View {
    var icon: String
    var index: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = index
        }) {
            Image(icon)
                .renderingMode(.template)
                .foregroundColor(selectedTab == index ? theme.primaryColor : Color(hex: 0x231F20))
                .frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





