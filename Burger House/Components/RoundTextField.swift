//import SwiftUI
//
//struct SontentView: View {
//    var body: some View {
//        TabView {
//            ForEach(1...3, id: \.self) { index in
//                PageView(pageIndex: index)
//                    .tabItem {
//                        Image(systemName: "square.fill")
//                        Text("Page \(index)")
//                    }
//            }
//        }
//        .tabViewStyle(PageTabViewStyle())
//    }
//}
//
//struct PageView: View {
//    let pageIndex: Int
//    
//    var body: some View {
//        VStack {
//            Text("Page \(pageIndex)")
//                .font(.largeTitle)
//            Spacer()
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.blue)
//        .foregroundColor(.white)
//    }
//}
//
//struct SontentView_Previews: PreviewProvider {
//    static var previews: some View {
//        SontentView()
//    }
//}
