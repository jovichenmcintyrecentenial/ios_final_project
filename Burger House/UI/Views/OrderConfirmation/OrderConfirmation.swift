import SwiftUI

struct OrderConfirmationView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var navigationHelper: NavigationHelper

    var body: some View {
        VStack {
            Image("success")
                .resizable()
                .frame(width: 170, height: 170)
                .padding(.bottom, 20)
            Title("Your order has been placed",fontSize: 22)
            SizedBox(height: 2)
            Subtitle("We have started preparing your order. Monitor your order progress.")
                .multilineTextAlignment(.center)
            SizedBox(height: 100)
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal,20)
        .background(theme.backgroundColor)
        .onAppear {
                        Order.createOrder()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
                            Cart.clearCart()
                            emit(notificationName: .goToOrder)
                        }
                    }
        
    }
        
}

struct OrderConfirmation_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmationView()
    }
}
